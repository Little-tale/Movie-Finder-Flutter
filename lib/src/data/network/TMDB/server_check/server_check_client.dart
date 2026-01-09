import 'package:dio/dio.dart';
import 'package:movie_finder/secret/api_key.dart';
import 'package:movie_finder/src/data/tmdb/server_check/dto_server_check.dart';
import 'package:retrofit/retrofit.dart';

part 'server_check_client.g.dart';

@RestApi(baseUrl: TMDB_BASE_URL)
abstract class ServerCheckClient {
  factory ServerCheckClient(Dio dio, {String? baseUrl}) = _ServerCheckClient;

  @GET('authentication')
  Future<TmdbServerCheckDTO> checkAuth();
}
