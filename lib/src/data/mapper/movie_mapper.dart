import 'package:movie_finder/src/domain/entities/credits/casts/e_tmdb_cast_entity.dart';
import 'package:movie_finder/src/domain/entities/credits/crew/e_tmdb_crew_entity.dart';
import 'package:movie_finder/src/domain/entities/credits/e_tmdb_credits_entity.dart';
import 'package:movie_finder/src/domain/entities/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/domain/entities/movie_video/e_movie_video_entity.dart';
import 'package:movie_finder/src/domain/entities/product_company_entity/e_product_company_entity.dart';
import 'package:movie_finder/src/domain/entities/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_common/vo_tmdb_common_result_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_cast/movie_credit_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_detail/vo_tmdb_movie_detail_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_movie/tmdb_movie_videos/tmdb_movie_videos_dto.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/up_coming/tmdb_up_coming_dto.dart';
import 'package:movie_finder/src/data/network/TMDB/tmdb_image_path.dart';

final class MovieMapper {
  static SimpleMovieEntity fromDto(TmdbMovieDto dto) {
    return SimpleMovieEntity(
      id: dto.id,
      title: dto.title ?? dto.originalTitle ?? "",
      rating: dto.voteAverage ?? 0,
      posterUrl: dto.posterPath == null
          ? null
          : tmdbPosterPath(path: dto.posterPath!),
      backgroundUrl: dto.backdropPath == null
          ? null
          : tmdbBackDropUrl(path: dto.backdropPath!),
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

    final voteAverage = (dto.voteAverage ?? 0.0);

    double starRate = voteAverage;
    if (starRate != 0) {
      starRate = starRate / 2;
    }

    return MovieDetailEntity(
      movieID: dto.id.toString(),
      backImageUrlString: backDropUrl,
      posterImageUrlString: postUrl,
      movieName: dto.title ?? dto.originalTitle ?? "",
      movieDetailString: dto.overview ?? "",
      likeState: false,
      releaseDate: dto.releaseDate,
      voteAverage: voteAverage,
      starRate: starRate,
      genres: dto.genres.map((item) => item.name).toList(),
      genreIds: dto.genres.map((item) => item.id).toList(),
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

  // 영화 관계자들
  static TmdbCreditsEntity fromCredit(MovieCreditDto dto) {
    return TmdbCreditsEntity(
      cast: dto.cast.map((item) {
        return TmdbCastEntity(
          name: item.name,
          characterName: item.character,
          profileUrl: makePosterUrl(item.profilePath),
        );
      }).toList(),
      crew: dto.crew.map((item) {
        return TmdbCrewEntity(
          id: item.id,
          name: item.name,
          profileUrl: makePosterUrl(item.profilePath),
          job: item.job,
        );
      }).toList(),
    );
  }

  static String? makePosterUrl(String? path) {
    if (path == null) {
      return null;
    }
    return tmdbPosterPath(path: path);
  }

  // MARK: Movie Video
  static List<MovieVideoEntity> fromMovieVideoDTO(TmdbMovieVideosDto dto) {
    return dto.results
        .where(
          (item) =>
              item.site?.toLowerCase() == 'youtube' &&
              (item.key.trim().isNotEmpty),
        )
        .map(
          (item) => MovieVideoEntity(
            name: item.name,
            key: item.key.trim(),
            id: item.id,
            site: item.site,
            size: item.size,
          ),
        )
        .toList();
  }
}
