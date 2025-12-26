import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_video_dto.freezed.dart';
part 'tmdb_video_dto.g.dart';

@freezed
sealed class TmdbVideoDto with _$TmdbVideoDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory TmdbVideoDto({
    required String name,
    required String key,
    String? site,
    int? size,
    required String id,
  }) = _TmdbVideoDto;

  factory TmdbVideoDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbVideoDtoFromJson(json);
}
