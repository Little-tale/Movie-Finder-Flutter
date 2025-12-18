import 'package:dio/dio.dart';
import 'package:movie_finder/secret/api_key.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/up_comming/tmdb_up_comming_dto.dart';
import 'package:movie_finder/src/network/TMDB/movie_list/tmdb_movie_list_client.dart';
import 'package:movie_finder/src/network/TMDB/server_check/server_check_client.dart';
import 'package:movie_finder/utils/result.dart';

final class TmdbNetworkManager {
  TmdbNetworkManager._(this._dio);

  static final instance = TmdbNetworkManager._(_createDio());

  final Dio _dio;

  static Dio _createDio() {
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
    // TODO: interceptor
    // dio.interceptors.add(LogInterceptor(responseBody: true));

    return dio;
  }

  // clients
  ServerCheckClient get _server => ServerCheckClient(_dio);
  TmdbMovieListClient get _movies => TmdbMovieListClient(_dio);

  Future<String> serverTest() async {
    try {
      final dto = await _server.checkAuth();
      return dto.success ? 'TMDB OK ✅' : 'TMDB FAIL ❌';
    } on DioException catch (e) {
      return 'DIO ERROR ❌ ${e.response?.statusCode} ${e.message}';
    } catch (e) {
      return 'ERROR ❌ $e';
    }
  }

  Future<Result<List<TmdbMovieDto>>> getMovieList({
    required int page,
    String language = 'ko-KR',
  }) async {
    try {
      final dto = await _movies.getTopRatedMovies(
        page: page,
        language: language,
      );
      return Result.Success(dto.results);
    } on DioException catch (e) {
      return Result.Failure(
        Exception('HTTP ${e.response?.statusCode}: ${e.message}'),
      );
    } catch (e) {
      return Result.Failure(Exception('Error: $e'));
    }
  }

  Future<Result<TmdbUpcomingDTO>> getTmdbUpComming({
    required int page,
    String language = 'ko-KR',
  }) async {
    try {
      final dto = await _movies.getUpcomingMovies(
        page: page,
        language: language,
      );
      return Result.Success(dto);
    } on DioException catch (e) {
      return Result.Failure(
        Exception('HTTP ${e.response?.statusCode}: ${e.message}'),
      );
    } catch (e) {
      return Result.Failure(Exception('Error: $e'));
    }
  }
}
