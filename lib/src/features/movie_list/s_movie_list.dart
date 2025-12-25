import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/features/movie_list/sub_widgets/w_now_playing_movie.dart';
import 'package:movie_finder/src/features/movie_list/sub_widgets/w_popular_movie.dart';
import 'package:movie_finder/src/features/movie_list/sub_widgets/w_top_rated_section.dart';
import 'package:movie_finder/src/features/movie_list/sub_widgets/w_upcoming_carousel_movie.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieListScreen extends ConsumerStatefulWidget {
  const MovieListScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _MovieListScreenState();
}

class _MovieListScreenState extends ConsumerState<MovieListScreen> {
  @override
  Widget build(BuildContext context) {
    // final state = ref.watch(movieListVmProvider);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: '영찾'.text.size(24).bold.make().pOnly(left: 8),
            centerTitle: false,
          ),
          SliverToBoxAdapter(child: UpcomingCarouselWidget()),
          PopularMovieWidget(),
          SliverToBoxAdapter(child: TopRatedSection().pOnly(bottom: 024)),
          SliverToBoxAdapter(child: NowPlayingWidget()),

          // MARK: SafeArea
          SliverToBoxAdapter(
            child: context.bottomBarWithSafeAreaHeight.heightBox.pOnly(
              bottom: 8,
            ),
          ),
        ],
      ),
    );
  }
}
