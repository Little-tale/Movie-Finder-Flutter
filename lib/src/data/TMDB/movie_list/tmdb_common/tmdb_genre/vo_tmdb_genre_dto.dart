import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_tmdb_genre_dto.freezed.dart';
part 'vo_tmdb_genre_dto.g.dart';

@freezed
sealed class TmdbGenreDto with _$TmdbGenreDto {
  const factory TmdbGenreDto({required int id, required String name}) =
      _TmdbGenreDto;

  factory TmdbGenreDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbGenreDtoFromJson(json);
}
