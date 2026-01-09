import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_tmdb_cast_entity.freezed.dart';

@freezed
sealed class TmdbCastEntity with _$TmdbCastEntity {
  factory TmdbCastEntity({
    required String name,
    required String characterName,
    required String? profileUrl,
  }) = _TmdbCastEntity;
}
