import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_cast/cast/movie_cast_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_cast/crew/movie_crew_dto.dart';

part 'movie_credit_dto.freezed.dart';
part 'movie_credit_dto.g.dart';

@freezed
sealed class MovieCreditDto with _$MovieCreditDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory MovieCreditDto({
    required int id,
    required List<MovieCastDTO> cast,
    required List<MovieCrewDTO> crew,
  }) = _MovieCreditDto;

  factory MovieCreditDto.fromJson(Map<String, dynamic> json) =>
      _$MovieCreditDtoFromJson(json);
}
