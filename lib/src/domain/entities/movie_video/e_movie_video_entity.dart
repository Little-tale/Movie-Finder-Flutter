import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_movie_video_entity.freezed.dart';

@freezed
sealed class MovieVideoEntity with _$MovieVideoEntity {
  factory MovieVideoEntity({
    required String name,
    required String key,
    String? site,
    int? size,
    required String id,
  }) = _MovieVideoEntity;
}
