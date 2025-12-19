import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/network/TMDB/search_movie/search_movie_client.dart';
import 'package:movie_finder/src/network/core/dio_guard.dart';
import 'package:movie_finder/utils/result.dart';

final class TmdbSearchRepository {
  TmdbSearchRepository(this._searchClient);

  final SearchMovieClient _searchClient;

  /// Search Movies
  Future<Result<TmdbCommonResultDto<TmdbMovieDto>>> searchMovie({
    required String query,
    required int page,
    String language = 'ko-KR',
  }) async {
    return dioGuard(
      () => _searchClient.searchMovie(
        query: query,
        page: page,
        language: language,
      ),
    );
  }
}
