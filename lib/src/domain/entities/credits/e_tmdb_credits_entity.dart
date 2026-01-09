import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/domain/entities/credits/casts/e_tmdb_cast_entity.dart';
import 'package:movie_finder/src/domain/entities/credits/crew/e_tmdb_crew_entity.dart';

part 'e_tmdb_credits_entity.freezed.dart';

@freezed
sealed class TmdbCreditsEntity with _$TmdbCreditsEntity {
  factory TmdbCreditsEntity({
    required List<TmdbCastEntity> cast,
    required List<TmdbCrewEntity> crew,
  }) = _TmdbCreditsEntity;
}
