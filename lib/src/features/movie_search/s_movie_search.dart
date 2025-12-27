import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/features/movie_search/search_scroll_provider/search_scroll_provider.dart';
import 'package:movie_finder/src/features/movie_search/search_top_bar/w_search_top_bar.dart';
import 'package:movie_finder/src/features/movie_search/view_model/movie_search_state.dart';
import 'package:movie_finder/src/features/movie_search/view_model/vm_movie_search.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieSearchScreen extends ConsumerStatefulWidget {
  const MovieSearchScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieSearchScreenState();
}

class _MovieSearchScreenState extends ConsumerState<MovieSearchScreen> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(movieSearchViewModelProvider);
    final controller = ref.watch(searchScrollControllerProvider);

    return Scaffold(
      appBar: AppBar(title: SearchTopBar()),
      body: state.when(
        data: (state) {
          return _emptyBody(state: state, controller: controller);
        },
        error: (e, s) => Text('$e'),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }

  Widget _emptyBody({
    required SearchMovieScreenState state,
    required ScrollController controller,
  }) {
    final popularItems = state.popularItems.items;
    final recommendItems = state.recommendItems.items;

    return CustomScrollView(
      controller: controller,
      slivers: [
        // MARK: People watching (horizontal)
        SliverToBoxAdapter(
          child: _peopleWatchingSection(popularItems: popularItems),
        ),

        // MARK: Recommend title
        SliverToBoxAdapter(
          child: '추천하는 시리즈 & 영화'.text
              .size(20)
              .bold
              .make()
              .pOnly(left: 8, right: 8, top: 16, bottom: 8),
        ),

        // MARK: Recommend list (vertical)
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            final item = recommendItems[index];
            return _verticalListItem(recommendItems, index).onTap(() {
              context.pushNamed(
                RouteNames.detail,
                pathParameters: {'id': item.id.toString()},
              );
            });
          }, childCount: recommendItems.length),
        ),

        // MARK: Bottom safe area spacer
        SliverToBoxAdapter(
          child: context.bottomBarWithSafeAreaHeight.heightBox.pOnly(bottom: 8),
        ),
      ],
    );
  }

  Widget _peopleWatchingSection({
    required List<SimpleMovieEntity> popularItems,
  }) {
    if (popularItems.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '사람들이 시청중인 컨텐츠'.text
            .size(20)
            .bold
            .make()
            .pOnly(left: 8, right: 8, top: 8, bottom: 8),
        SizedBox(
          height: 150,
          child: ListView.builder(
            primary: false, // 안전
            itemCount: popularItems.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return _rowListItem(popularItems, index).onTap(() {
                context.pushNamed(
                  RouteNames.detail,
                  pathParameters: {'id': popularItems[index].id.toString()},
                );
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _rowListItem(List<SimpleMovieEntity> datas, int index) {
    return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 1.5,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: NetworkImageWidget(imageUrl: datas[index].posterUrl),
            ),
          ),
        )
        .pOnly(left: index == 0 ? 6 : 0)
        .pOnly(right: (datas.length - 1) == index ? 6 : 0);
  }

  Widget _verticalListItem(List<SimpleMovieEntity> datas, int index) {
    final item = datas[index];
    return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 1.5,
              ),
            ),
            child: HStack([
              // movie Back
              SizedBox(
                width: VxContextExtensions(context).screenWidth / 2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: NetworkImageWidget(
                      imageUrl: item.backgroundUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ).pOnly(right: 8),

              // movie Name
              SizedBox(
                width: VxContextExtensions(context).screenWidth / 2 - 20,
                child: item.title.text.softWrap(true).size(16).semiBold.make(),
              ),
            ]),
          ),
        )
        .pOnly(top: index == 0 ? 6 : 0)
        .pOnly(bottom: (datas.length - 1) == index ? 6 : 0);
  }
}
