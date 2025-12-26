import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/common/ui/w_named_poster.dart';
import 'package:movie_finder/src/features/movie_list/vm_movie_list_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class PopularMovieWidget extends ConsumerStatefulWidget {
  const PopularMovieWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _PopularMovieWidgetState();
}

class _PopularMovieWidgetState extends ConsumerState<PopularMovieWidget> {
  final height = 250.0;
  final _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    checkScroll();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      movieListVmProvider.select((item) {
        return item.whenData((s) => s.popularItems);
      }),
    );

    return SliverToBoxAdapter(
      child: state.when(
        data: (data) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              '현재 인기 급상승🍿'.text
                  .size(24)
                  .bold
                  .make()
                  .pOnly(left: 16, bottom: 8, top: 16),
              SizedBox(
                height: height + 12,
                child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: data.items.length,
                  itemBuilder: (context, index) {
                    return VStack([
                      NamedPosterWidget(
                        height: height,
                        posterUrl: data.items[index].posterUrl,
                        title: data.items[index].title,
                      ).pSymmetric(h: 12),
                    ]).onTap(() {
                      context.pushNamed(
                        RouteNames.detail,
                        pathParameters: {'id': data.items[index].id.toString()},
                      );
                    });
                  },
                ),
              ),
            ],
          );
        },
        error: (e, _) => Text('$e'),
        loading: () => const SizedBox(
          height: 180,
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }

  void checkScroll() {
    _controller.addListener(() {
      final pos = _controller.position;
      const threshold = 300.0;
      if (pos.maxScrollExtent - pos.pixels <= threshold) {
        ref.read(movieListVmProvider.notifier).loadMorePopularMovies();
      }
    });
  }
}
