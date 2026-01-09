import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/src/presentation/common/ui/w_top_rated_poster_widget.dart';
import 'package:movie_finder/src/domain/entities/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/data/network/core/dio_provider.dart';
import 'package:movie_finder/src/core/utils/result.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: non_constant_identifier_names
final TestProvider = FutureProvider.autoDispose<SimpleMovieEntity>((ref) async {
  final repo = ref.watch(movieRepoProvider);
  final result = await repo.topRated(page: 1);
  switch (result) {
    case Success(value: final movies):
      return movies.first;
    case Failure(error: final exception):
      throw exception;
  }
});

final class TestWidget extends ConsumerWidget {
  const TestWidget({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final testAsync = ref.watch(TestProvider);

    return Scaffold(
      appBar: AppBar(title: "Home $number".text.make()),
      body: SafeArea(
        bottom: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello World! $number'),
              TextButton(
                onPressed: () async {
                  final repo = ref.read(serverAuthRepoProvider);
                  final result = await repo.serverTest();
                  debugPrint(result);
                },
                child: Text('Server Check'),
              ),
              TextButton(
                onPressed: () async {
                  final repo = ref.read(movieRepoProvider);
                  final result = await repo.topRated(page: 1);
                  switch (result) {
                    case Success(value: final movies):
                      debugPrint('$movies');
                    case Failure(error: final _):
                      break;
                  }
                },
                child: Text('Top List Check'),
              ),
              TextButton(
                onPressed: () async {
                  final repo = ref.read(movieRepoProvider);
                  final result = await repo.upcoming(page: 1);
                  switch (result) {
                    case Success(value: final movies):
                      debugPrint('$movies');
                    case Failure(error: final _):
                      break;
                  }
                },
                child: Text('UpComings Check'),
              ),

              TextButton(
                onPressed: () async {
                  final repo = ref.read(searchRepoProvider);
                  final result = await repo.searchMovie(query: '님아', page: 1);
                  switch (result) {
                    case Success(value: final movies):
                      debugPrint('$movies');
                    case Failure(error: final _):
                      break;
                  }
                },
                child: Text('Search Check "님아"'),
              ),
              TextButton(
                onPressed: () async {
                  final repo = ref.read(movieRepoProvider);
                  final result = await repo.getDetails(movieId: 306598);
                  switch (result) {
                    case Success(value: final movies):
                      debugPrint('$movies');
                    case Failure(error: final _):
                      break;
                  }
                },
                child: Text('detail Check "님아 그강을..."'),
              ),
              TextButton(
                onPressed: () async {
                  final repo = ref.read(movieRepoProvider);
                  final result = await repo.popular(page: 1);
                  switch (result) {
                    case Success(value: final movies):
                      debugPrint('$movies');
                    case Failure(error: final _):
                      break;
                  }
                },
                child: Text('인기 영화 순위'),
              ),

              testAsync.when(
                data: (value) => TopRatedPosterWidget(
                  postUrlString: value.posterUrl,
                  rating: 1,
                ),
                error: (e, _) => Text(e.toString()),
                loading: () => const SizedBox(),
              ),

              Spacer(),
              'Test'.text.size(70).bold.make().fittedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
