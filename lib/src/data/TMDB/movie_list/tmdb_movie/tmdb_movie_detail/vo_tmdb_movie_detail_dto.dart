import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/product_company/vo_product_company_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_common/tmdb_genre/vo_tmdb_genre_dto.dart';
import 'package:movie_finder/utils/Data/nullable_date_time_converter.dart';

part 'vo_tmdb_movie_detail_dto.freezed.dart';
part 'vo_tmdb_movie_detail_dto.g.dart';

@freezed
abstract class TmdbMovieDetailDto with _$TmdbMovieDetailDto {
  const factory TmdbMovieDetailDto({
    @Default(false) bool adult,

    @JsonKey(name: 'backdrop_path') String? backdropPath,

    int? budget,

    @Default(<TmdbGenreDto>[]) List<TmdbGenreDto> genres,

    String? homepage,

    required int id,

    @JsonKey(name: 'imdb_id') String? imdbId,

    @JsonKey(name: 'origin_country')
    @Default(<String>[])
    List<String> originCountry,

    @JsonKey(name: 'original_language') String? originalLanguage,

    @JsonKey(name: 'original_title') String? originalTitle,

    String? overview,

    double? popularity,

    @JsonKey(name: 'poster_path') String? posterPath,

    @JsonKey(name: 'production_companies')
    @Default(<ProductCompanyDto>[])
    List<ProductCompanyDto> productionCompanies,

    @JsonKey(name: 'release_date')
    @NullableDateTimeConverter()
    DateTime? releaseDate,

    int? revenue,

    int? runtime,

    String? status,

    String? tagline,

    String? title,

    @Default(false) bool video,

    @JsonKey(name: 'vote_average') double? voteAverage,

    @JsonKey(name: 'vote_count') int? voteCount,
  }) = _TmdbMovieDetailDto;

  factory TmdbMovieDetailDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbMovieDetailDtoFromJson(json);
}
