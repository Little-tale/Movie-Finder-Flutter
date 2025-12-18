import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/utils/Data/nullable_date_time_converter.dart';

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
  }) = _TmdbMovieDto;

  factory TmdbMovieDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbMovieDtoFromJson(json);
}
