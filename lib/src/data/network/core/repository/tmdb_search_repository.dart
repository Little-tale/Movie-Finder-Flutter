import 'package:movie_finder/src/domain/entities/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/data/mapper/movie_mapper.dart';
import 'package:movie_finder/src/data/network/TMDB/search_movie/search_movie_client.dart';
import 'package:movie_finder/src/data/network/core/dio_guard.dart';
import 'package:movie_finder/src/core/utils/result.dart';

final class TmdbSearchRepository {
  TmdbSearchRepository(this._searchClient);

  final SearchMovieClient _searchClient;

  /// Search Movies
  Future<Result<List<SimpleMovieEntity>>> searchMovie({
    required String query,
    required int page,
    String language = 'ko-KR',
  }) async {
    return dioGuard<List<SimpleMovieEntity>>(() async {
      final dto = await _searchClient.searchMovie(
        query: query,
        page: page,
        language: language,
      );
      return MovieMapper.fromDtos(dto);
    });
  }
}
