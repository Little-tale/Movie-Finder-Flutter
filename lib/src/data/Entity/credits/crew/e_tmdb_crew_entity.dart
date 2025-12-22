import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_tmdb_crew_entity.freezed.dart';

@freezed
sealed class TmdbCrewEntity with _$TmdbCrewEntity {
  factory TmdbCrewEntity({
    required int id,
    required String name,
    required String? profileUrl,
    required String job,
  }) = _TmdbCrewEntity;
}
