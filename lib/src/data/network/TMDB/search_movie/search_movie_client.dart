import 'package:dio/dio.dart';
import 'package:movie_finder/secret/api_key.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'search_movie_client.g.dart';

@RestApi(baseUrl: TMDB_BASE_URL)
abstract class SearchMovieClient {
  factory SearchMovieClient(Dio dio, {String? baseUrl}) = _SearchMovieClient;

  @GET('search/movie')
  Future<TmdbCommonResultDto<TmdbMovieDto>> searchMovie({
    @Query('query') required String query,
    @Query('page') required int page,
    @Query('language') String language = 'ko-KR',
  });
}
