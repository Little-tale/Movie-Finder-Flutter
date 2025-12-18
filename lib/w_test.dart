import 'package:flutter/material.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/network/TMDB/tmdb_network_manager.dart';
import 'package:movie_finder/utils/result.dart';
import 'package:velocity_x/velocity_x.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key, required this.number});

  final int number;

  @override
  Widget build(BuildContext context) {
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
              Spacer(),
              'Test'.text.size(70).bold.make().fittedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
