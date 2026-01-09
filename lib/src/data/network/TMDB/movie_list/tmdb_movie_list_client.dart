import 'package:dio/dio.dart';
import 'package:movie_finder/secret/api_key.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_cast/movie_credit_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_detail/vo_tmdb_movie_detail_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_videos/tmdb_movie_videos_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/up_coming/tmdb_up_coming_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'tmdb_movie_list_client.g.dart';

@RestApi(baseUrl: TMDB_BASE_URL)
abstract class TmdbMovieListClient {
  factory TmdbMovieListClient(Dio dio, {String? baseUrl}) =
      _TmdbMovieListClient;

  @GET('movie/top_rated')
  Future<TmdbCommonResultDto<TmdbMovieDto>> getTopRatedMovies({
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });

  @GET('movie/upcoming')
  Future<TmdbUpcomingDTO> getUpcomingMovies({
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });

  @GET('movie/{movie_id}')
  Future<TmdbMovieDetailDto> getMovieDetails({
    @Path('movie_id') required String movieId,
    @Query('language') String language = 'ko-KR',
  });

  @GET('movie/popular')
  Future<TmdbCommonResultDto<TmdbMovieDto>> getPopularMovies({
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });

  @GET('movie/now_playing')
  Future<TmdbCommonResultDto<TmdbMovieDto>> getNowPlaying({
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });

  @GET('/movie/{movie_id}/credits')
  Future<MovieCreditDto> getMovieCredits({
    @Path('movie_id') required String movieID,
    @Query('language') String language = 'ko-KR',
  });

  // Mark: Video
  @GET('/movie/{movie_id}/videos')
  Future<TmdbMovieVideosDto> getMovieVideos({
    @Path('movie_id') required int movieID,
    @Query('language') String language = 'ko-KR',
  });
}
