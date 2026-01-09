import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/tmdb/movie_list/tmdb_common/product_company/vo_product_company_dto.dart';
import 'package:movie_finder/src/core/utils/Data/nullable_date_time_converter.dart';

part 'tmdb_movie_dto.freezed.dart';
part 'tmdb_movie_dto.g.dart';

@freezed
abstract class TmdbMovieDto with _$TmdbMovieDto {
  const factory TmdbMovieDto({
    @Default(false) bool adult,

    @JsonKey(name: 'backdrop_path') String? backdropPath,

    @JsonKey(name: 'genre_ids') @Default(<int>[]) List<int> genreIds,

    required int id,

    @JsonKey(name: 'original_language') String? originalLanguage,

    @JsonKey(name: 'original_title') String? originalTitle,

    String? overview,

    double? popularity,

    @JsonKey(name: 'poster_path') String? posterPath,

    @JsonKey(name: 'release_date')
    @NullableDateTimeConverter()
    DateTime? releaseDate,

    String? title,

    @Default(false) bool video,

    @JsonKey(name: 'vote_average') double? voteAverage,

    @JsonKey(name: 'vote_count') int? voteCount,

    @JsonKey(name: 'production_companies')
    @Default(<ProductCompanyDto>[])
    List<ProductCompanyDto> productionCompanies,
  }) = _TmdbMovieDto;

  factory TmdbMovieDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbMovieDtoFromJson(json);
}
