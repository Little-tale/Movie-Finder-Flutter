import 'package:dio/dio.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/top_rated/top_rated_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/up_comming/tmdb_up_comming_dto.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../secret/api_key.dart';

part 'tmdb_movie_list_client.g.dart';

@RestApi(baseUrl: TMDB_BASE_URL)
abstract class TmdbMovieListClient {
  factory TmdbMovieListClient(Dio dio, {String? baseUrl}) =
      _TmdbMovieListClient;

  @GET('movie/top_rated')
  Future<TopRatedDTO> getTopRatedMovies({
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });

  @GET('movie/upcoming')
  Future<TmdbUpcomingDTO> getUpcomingMovies({
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });
}
