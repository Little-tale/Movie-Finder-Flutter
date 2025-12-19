import 'package:dio/dio.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_detail/vo_tmdb_movie_detail_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/up_coming/tmdb_up_coming_dto.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../secret/api_key.dart';

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
}
