import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/data/DB/favorite_movie.dart';
import 'package:movie_finder/src/data/Entity/genre/tmdb_genre.dart';
import 'package:movie_finder/src/features/movie_likes/vm/movie_like_view_model.dart';
import 'package:movie_finder/src/network/TMDB/tmdb_image_path.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieLikesScreen extends ConsumerStatefulWidget {
  const MovieLikesScreen({super.key});

  @override
  ConsumerState<MovieLikesScreen> createState() => _MovieLikesScreenState();
}

class _MovieLikesScreenState extends ConsumerState<MovieLikesScreen> {
  final ScrollController _scrollController = ScrollController();
  final GlobalKey _headerKey = GlobalKey();

  bool _isHeaderPinned = false;
  double? _headerHeight;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _updateHeaderHeight();
      _handleScroll();
    });
  }

  void _updateHeaderHeight() {
    final ctx = _headerKey.currentContext;
    if (ctx == null) return;

    final box = ctx.findRenderObject() as RenderBox?;
    if (box == null || !box.attached) return;

    _headerHeight = box.size.height;
  }

  void _handleScroll() {
    if (_headerHeight == null) {
      _updateHeaderHeight();
    }
    if (!_scrollController.hasClients || _headerHeight == null) return;

    final next = _scrollController.offset >= _headerHeight!;
    if (next != _isHeaderPinned) {
      setState(() => _isHeaderPinned = next);
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
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
          IgnorePointer(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 220),
              curve: Curves.easeOut,
              height: topInset * 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: _isHeaderPinned
                      ? const [Colors.black, Colors.black]
                      : [
                          Colors.deepPurple.withValues(alpha: 0.52),
                          Colors.transparent,
                        ],
                ),
              ),
            ),
          ),
          SafeArea(
            bottom: false,
            child: Stack(
              children: [
                vm.when(
                  data: (state) {
                    if (_headerHeight == null) {
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _updateHeaderHeight();
                        _handleScroll();
                      });
                    }

                    return Stack(
                      children: [
                        // 스크롤 본문
                        CustomScrollView(
                          controller: _scrollController,
                          slivers: [
                            SliverToBoxAdapter(
                              child: Column(
                                key: _headerKey,
                                children: [
                                  _topHeaderView(state.movies.length, topInset),
                                  16.heightBox,
                                ],
                              ),
                            ),

                            SliverPersistentHeader(
                              pinned: true,
                              delegate: _GenreHeaderDelegate(
                                height: 49,
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 8,
                                  ),
                                  color: Colors.black,
                                  child: _genreList(
                                    state.allGenreIds,
                                    state.currentIdx,
                                  ),
                                ),
                              ),
                            ),

                            // 아래 컨텐츠
                            SliverPadding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 4,
                              ),
                              sliver: SliverGrid(
                                delegate: SliverChildBuilderDelegate((
                                  context,
                                  index,
                                ) {
                                  final item = state.movies[index];
                                  return _movieItem(item).onTap(() {
                                    context.pushNamed(
                                      RouteNames.detail,
                                      pathParameters: {'id': item.movieId},
                                    );
                                  });
                                }, childCount: state.movies.length),
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      mainAxisSpacing: 4,
                                      crossAxisSpacing: 4,
                                      childAspectRatio: 0.7,
                                    ),
                              ),
                            ),

                            SliverToBoxAdapter(
                              child: context
                                  .bottomBarWithSafeAreaHeight
                                  .heightBox
                                  .pOnly(bottom: 8),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                  error: (e, _) => 'ERROR - $e'.text.bold.size(24).make(),
                  loading: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
              ],
            ),
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
    ).pOnly(top: 16);
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
      padding: const EdgeInsets.symmetric(horizontal: 8),
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
      child:
          Container(
            color: currentIdx == idx
                ? Colors.purple[600]
                : const Color.fromARGB(255, 35, 57, 89),
            child: text.text.semiBold
                .color(Colors.white)
                .make()
                .pSymmetric(h: 16, v: 8),
          ).onTap(() {
            final vm = ref.read(movieLikeViewModelProvider.notifier);
            vm.tappedGenreIdx(idx);
          }),
    );
  }

  Widget _movieItem(FavoriteMovie item) {
    final posterPath = item.posterPath;

    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 9 / 16,
        child: posterPath == null || posterPath.isEmpty
            ? const ColoredBox(color: Colors.grey)
            : CachedNetworkImage(
                imageUrl: tmdbPosterPath(path: posterPath),
                fit: BoxFit.cover,
                placeholder: (_, __) => const ColoredBox(color: Colors.black26),
                errorWidget: (_, __, ___) => const Center(
                  child: Icon(Icons.broken_image, color: Colors.white54),
                ),
              ),
      ),
    );
  }
}

class _GenreHeaderDelegate extends SliverPersistentHeaderDelegate {
  _GenreHeaderDelegate({required this.height, required this.child});

  final double height;
  final Widget child;

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return child;
  }

  @override
  bool shouldRebuild(covariant _GenreHeaderDelegate oldDelegate) {
    return height != oldDelegate.height || child != oldDelegate.child;
  }
}
