import 'package:dio/dio.dart';
import 'package:movie_finder/src/data/network/TMDB/server_check/server_check_client.dart';

final class TmdbAuthRepository {
  TmdbAuthRepository(this._serverClient);

  final ServerCheckClient _serverClient;

  /// Server Test
  Future<String> serverTest() async {
    try {
      final dto = await _serverClient.checkAuth();
      return dto.success ? 'TMDB OK ✅' : 'TMDB FAIL ❌';
    } on DioException catch (e) {
      return 'DIO ERROR ❌ ${e.response?.statusCode} ${e.message}';
    } catch (e) {
      return 'ERROR ❌ $e';
    }
  }
}
