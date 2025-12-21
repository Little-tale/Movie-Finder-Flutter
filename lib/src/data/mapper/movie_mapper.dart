import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/data/Entity/product_company_entity/e_product_company_entity.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_detail/vo_tmdb_movie_detail_dto.dart';
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

  // 영화 상세
  static MovieDetailEntity fromMovieDetail(TmdbMovieDetailDto dto) {
    final backDropUrl = dto.backdropPath != null
        ? tmdbBackDropUrl(path: dto.backdropPath!)
        : null;
    final postUrl = dto.posterPath != null
        ? tmdbPosterPath(path: dto.posterPath!)
        : null;

    return MovieDetailEntity(
      backImageUrlString: backDropUrl,
      posterImageUrlString: postUrl,
      movieName: dto.title ?? dto.originalTitle ?? "",
      movieDetailString: dto.overview ?? "",
      likeState: false,
      releaseDate: dto.releaseDate,
      voteAverage: dto.voteAverage ?? 0.0,
      genres: dto.genres.map((item) => item.name).toList(),
      productionCompanies: dto.productionCompanies.map((item) {
        return ProductCompanyEntity(
          id: item.id,
          name: item.name,
          originCountry: item.originCountry,
          logoPath: item.logoPath != null
              ? tmdbPosterPath(path: item.logoPath!)
              : null,
        );
      }).toList(),
    );
  }
}
