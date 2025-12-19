import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_detail/vo_tmdb_movie_detail_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/up_coming/tmdb_up_coming_dto.dart';
import 'package:movie_finder/src/network/TMDB/movie_list/tmdb_movie_list_client.dart';
import 'package:movie_finder/src/network/core/dio_guard.dart';
import 'package:movie_finder/utils/result.dart';

final class MovieRepository {
  MovieRepository(this._movies);

  final TmdbMovieListClient _movies;

  Future<Result<List<TmdbMovieDto>>> topRated({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard(() async {
      final dto = await _movies.getTopRatedMovies(
        page: page,
        language: language,
      );
      return dto.results;
    });
  }

  Future<Result<TmdbUpcomingDTO>> upcoming({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard(
      () => _movies.getUpcomingMovies(page: page, language: language),
    );
  }

  Future<Result<TmdbMovieDetailDto>> details({
    required int movieId,
    String language = 'ko-KR',
  }) {
    return dioGuard(
      () => _movies.getMovieDetails(
        movieId: movieId.toString(),
        language: language,
      ),
    );
  }

  Future<Result<TmdbCommonResultDto<TmdbMovieDto>>> popular({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard(
      () => _movies.getPopularMovies(page: page, language: language),
    );
  }
}
