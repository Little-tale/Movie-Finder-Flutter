import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/data/Entity/genre/tmdb_genre.dart';
import 'package:movie_finder/src/features/movie_likes/vm/movie_like_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieLikesScreen extends ConsumerStatefulWidget {
  const MovieLikesScreen({super.key});

  @override
  ConsumerState<MovieLikesScreen> createState() => _MovieLikesScreenState();
}

class _MovieLikesScreenState extends ConsumerState<MovieLikesScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _genreKey = GlobalKey();

  // (옵션) 위/아래 두 개 genreList가 같은 가로 스크롤 위치 공유하게
  final ScrollController _genreHController = ScrollController();

  bool _showPinnedGenre = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    final ctx = _genreKey.currentContext;
    if (ctx == null) return;

    final box = ctx.findRenderObject() as RenderBox?;
    if (box == null || !box.attached) return;

    final topInset = MediaQuery.paddingOf(context).top;

    // genreList(리스트 안에 있는)의 화면상 y좌표
    final dy = box.localToGlobal(Offset.zero).dy;

    // dy가 상태바 아래(topInset)보다 위로 올라가면 pinned 보여주기
    final next = dy <= topInset;

    if (next != _showPinnedGenre) {
      setState(() => _showPinnedGenre = next);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _genreHController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = ref.watch(movieLikeViewModelProvider);
    final topInset = context.safeAreaTop;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // 배경 그라데이션(원래 쓰던 거 유지)
          IgnorePointer(
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.deepPurple.withValues(alpha: 0.52),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),

          vm.when(
            data: (state) => Stack(
              children: [
                // 스크롤 본문
                CustomScrollView(
                  controller: _scrollController,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Column(
                        children: [
                          _topHeaderView(state.movies.length, topInset),
                          16.heightBox,

                          // “기준점”
                          SizedBox(
                            key: _genreKey,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: _genreList(
                                state.allGenreIds,
                                state.currentIdx,
                                controller: _genreHController,
                              ).hide(isVisible: !_showPinnedGenre),
                            ),
                          ),
                        ],
                      ),
                    ),

                    // 아래 컨텐츠
                    SliverToBoxAdapter(child: 800.heightBox),
                  ],
                ),

                // pinned genre bar (SafeArea 아래에만 고정)
                if (_showPinnedGenre)
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Stack(
                      children: [
                        Container(
                          color: Colors.black,
                          width: double.infinity,
                          height: topInset,
                        ),

                        Container(
                          color: Colors.transparent,
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: _genreList(
                            state.allGenreIds,
                            state.currentIdx,
                            controller: _genreHController,
                          ),
                        ).pOnly(top: topInset),
                      ],
                    ),
                  ),
              ],
            ),
            error: (e, _) => 'ERROR - $e'.text.bold.size(24).make(),
            loading: () => const Center(child: CircularProgressIndicator()),
          ),
        ],
      ),
    );
  }

  Widget _topHeaderView(int count, double topInset) {
    return SizedBox(
      width: double.infinity,
      child: VStack(crossAlignment: CrossAxisAlignment.center, [
        Icon(Icons.favorite_rounded, size: 60, color: Colors.purple[700]),
        'My Favorites'.text.size(24).bold.color(Colors.white).make(),
        8.heightBox,
        '당신의 사랑받는 영화와 시리즈 컬렉션\n가장 좋아하는 모든 것을 한 곳에'.text
            .align(TextAlign.center)
            .color(Colors.white)
            .make(),
        8.heightBox,
        HStack([
          '$count'.text.color(Colors.white).bold.size(18).make(),
          8.widthBox,
          'Movies & Series'.text.size(14).color(Colors.white).make(),
        ]),
      ]),
    ).pOnly(top: 8 + topInset);
  }

  Widget _genreList(
    List<int> ids,
    int currentIdx, {
    ScrollController? controller,
  }) {
    final genreNames = ids
        .map(TmdbGenre.fromId)
        .whereType<TmdbGenre>()
        .toList();

    return SingleChildScrollView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      child: HStack(spacing: 8, [
        _genreItem(text: 'All', currentIdx: currentIdx, idx: 0),
        ...List.generate(genreNames.length, (i) {
          final g = genreNames[i];
          return _genreItem(text: g.ko, currentIdx: currentIdx, idx: i + 1);
        }),
      ]),
    );
  }

  Widget _genreItem({
    required String text,
    required int currentIdx,
    required int idx,
  }) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(999),
      child: Container(
        color: currentIdx == idx
            ? Colors.purple[600]
            : const Color.fromARGB(255, 35, 57, 89),
        child: text.text.semiBold
            .color(Colors.white)
            .make()
            .pSymmetric(h: 16, v: 8),
      ),
    );
  }
}
