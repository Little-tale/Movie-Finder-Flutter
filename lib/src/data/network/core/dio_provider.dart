import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/secret/api_key.dart';
import 'package:movie_finder/src/data/network/TMDB/movie_list/tmdb_movie_list_client.dart';
import 'package:movie_finder/src/data/network/TMDB/search_movie/search_movie_client.dart';
import 'package:movie_finder/src/data/network/TMDB/server_check/server_check_client.dart';
import 'package:movie_finder/src/data/network/core/repository/movie_repository.dart';
import 'package:movie_finder/src/data/network/core/repository/tmdb_auth_repository.dart';
import 'package:movie_finder/src/data/network/core/repository/tmdb_search_repository.dart';

final dioProvider = Provider<Dio>((ref) {
  final dio = _createDio();
  return dio;
});

final _moviesClientProvider = Provider(
  (ref) => TmdbMovieListClient(ref.watch(dioProvider)),
);
final _searchClientProvider = Provider(
  (ref) => SearchMovieClient(ref.watch(dioProvider)),
);
final _serverCheckClientProvider = Provider(
  (ref) => ServerCheckClient(ref.watch(dioProvider)),
);

final movieRepoProvider = Provider(
  (ref) => MovieRepository(ref.watch(_moviesClientProvider)),
);
final searchRepoProvider = Provider(
  (ref) => TmdbSearchRepository(ref.watch(_searchClientProvider)),
);
final serverAuthRepoProvider = Provider(
  (ref) => TmdbAuthRepository(ref.watch(_serverCheckClientProvider)),
);

Dio _createDio() {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      contentType: 'application/json',
      headers: {
        'Authorization': 'Bearer $TMDB_ACCESS_TOKEN',
        'accept': 'application/json',
      },
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
    ),
  );

  dio.interceptors.add(
    LogInterceptor(
      request: true,
      requestHeader: false,
      error: true,
      // logPrint: (obj) => debugPrint(obj.toString()),
    ),
  );
  return dio;
}
