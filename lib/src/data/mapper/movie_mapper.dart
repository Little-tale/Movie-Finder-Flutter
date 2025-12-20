import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/up_coming/tmdb_up_coming_dto.dart';
import 'package:movie_finder/src/network/TMDB/tmdb_image_path.dart';

final class MovieMapper {
  static SimpleMovieEntity fromDto(TmdbMovieDto dto) {
    return SimpleMovieEntity(
      id: dto.id,
      title: dto.title ?? dto.originalTitle ?? "",
      rating: dto.voteAverage ?? 0,
      posterUrl: dto.posterPath == null
          ? null
          : tmdbPosterPath(path: dto.posterPath!),
      releaseDate: dto.releaseDate,
    );
  }

  static List<SimpleMovieEntity> fromDtos(TmdbCommonResultDto dto) {
    return dto.results.map((dto) {
      return fromDto(dto);
    }).toList();
  }

  static List<SimpleMovieEntity> fromComingDto(TmdbUpcomingDTO dto) {
    return dto.results.map((item) {
      return MovieMapper.fromDto(item);
    }).toList();
  }
}
