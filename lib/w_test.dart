import 'package:flutter/material.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/network/TMDB/tmdb_network_manager.dart';
import 'package:movie_finder/utils/result.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Hello World!'),
            TextButton(
              onPressed: () async {
                final result = await TmdbNetworkManager.instance.serverTest();
                print(result);
              },
              child: Text('Server Check'),
            ),
            TextButton(
              onPressed: () async {
                final result = await TmdbNetworkManager.instance.getMovieList(
                  page: 1,
                );
                switch (result) {
                  case Success<List<TmdbMovieDto>>(value: final movies):
                    print(movies);
                  case Failure(error: final exception):
                    print(exception);
                }
                print(result);
              },
              child: Text('Top List Check'),
            ),
            TextButton(
              onPressed: () async {
                final result = await TmdbNetworkManager.instance
                    .getTmdbUpComming(page: 1);
                switch (result) {
                  case Success(value: final movies):
                    print(movies);
                  case Failure(error: final exception):
                    print(exception);
                }

                print(result);
              },
              child: Text('UpComings Check'),
            ),
          ],
        ),
      ),
    );
  }
}
