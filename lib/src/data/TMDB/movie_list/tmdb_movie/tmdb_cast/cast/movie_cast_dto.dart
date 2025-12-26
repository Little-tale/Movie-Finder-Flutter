import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_cast_dto.freezed.dart';
part 'movie_cast_dto.g.dart';

@freezed
sealed class MovieCastDTO with _$MovieCastDTO {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MovieCastDTO({
    required bool adult,
    required int gender,
    required int id,
    required String knownForDepartment,
    required String name,
    required String originalName,
    required double popularity,
    String? profilePath,
    required int castId,
    required String character,
    required String creditId,
    required int order,
  }) = _MovieCastDTO;

  factory MovieCastDTO.fromJson(Map<String, dynamic> json) =>
      _$MovieCastDTOFromJson(json);
}
