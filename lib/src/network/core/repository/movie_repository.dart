import 'package:movie_finder/src/data/Entity/credits/e_tmdb_credits_entity.dart';
import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/data/Entity/movie_video/e_movie_video_entity.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/data/mapper/movie_mapper.dart';
import 'package:movie_finder/src/network/TMDB/movie_list/tmdb_movie_list_client.dart';
import 'package:movie_finder/src/network/TMDB/search_movie/search_movie_client.dart';
import 'package:movie_finder/src/network/core/dio_guard.dart';
import 'package:movie_finder/utils/result.dart';

final class MovieRepository {
  MovieRepository(this._movies);

  final TmdbMovieListClient _movies;

  /// TopRate
  Future<Result<List<SimpleMovieEntity>>> topRated({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard<List<SimpleMovieEntity>>(() async {
      final dto = await _movies.getTopRatedMovies(
        page: page,
        language: language,
      );
      return MovieMapper.fromDtos(dto);
    });
  }

  // MARK: - Popular
  Future<Result<List<SimpleMovieEntity>>> popular({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard<List<SimpleMovieEntity>>(() async {
      final dto = await _movies.getPopularMovies(
        page: page,
        language: language,
      );
      return MovieMapper.fromDtos(dto);
    });
  }

  // MARK: - Upcoming
  Future<Result<List<SimpleMovieEntity>>> upcoming({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard<List<SimpleMovieEntity>>(() async {
      final dto = await _movies.getUpcomingMovies(
        page: page,
        language: language,
      );

      return MovieMapper.fromComingDto(dto);
    });
  }

  // MARK: - NowPlaying
  Future<Result<List<SimpleMovieEntity>>> nowPlaying({
    required int page,
    String language = 'ko-KR',
  }) {
    return dioGuard<List<SimpleMovieEntity>>(() async {
      final dto = await _movies.getNowPlaying(page: page, language: language);
      return MovieMapper.fromDtos(dto);
    });
  }

  // MARK: - Details
  Future<Result<MovieDetailEntity>> getDetails({
    required int movieId,
    String language = 'ko-KR',
  }) {
    return dioGuard<MovieDetailEntity>(() async {
      final dto = await _movies.getMovieDetails(movieId: movieId.toString());
      return MovieMapper.fromMovieDetail(dto);
    });
  }

  // MARK: - Credit
  Future<Result<TmdbCreditsEntity>> getCredits({
    required int movieId,
    String language = 'ko-KR',
  }) {
    return dioGuard<TmdbCreditsEntity>(() async {
      final dto = await _movies.getMovieCredits(movieID: movieId.toString());
      return MovieMapper.fromCredit(dto);
    });
  }

  Future<Result<List<MovieVideoEntity>>> getMovieVideos({
    required int movieId,
    String language = 'ko-KR',
  }) {
    return dioGuard<List<MovieVideoEntity>>(() async {
      final dto = await _movies.getMovieVideos(movieID: movieId);
      return MovieMapper.fromMovieVideoDTO(dto);
    });
  }
}
