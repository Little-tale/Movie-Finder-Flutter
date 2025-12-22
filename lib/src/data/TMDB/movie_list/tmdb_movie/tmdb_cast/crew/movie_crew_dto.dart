import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_crew_dto.freezed.dart';
part 'movie_crew_dto.g.dart';

@freezed
sealed class MovieCrewDTO with _$MovieCrewDTO {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieCrewDTO({
    required bool adult,
    required int gender,
    required int id,
    required String knownForDepartment,
    required String name,
    required String originalName,
    required double popularity,
    String? profilePath,
    required String creditId,
    required String department,
    required String job,
  }) = _MovieCrewDTO;

  factory MovieCrewDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieCrewDTOFromJson(json);
}
