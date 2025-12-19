// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_tmdb_genre_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbGenreDto _$TmdbGenreDtoFromJson(Map<String, dynamic> json) =>
    _TmdbGenreDto(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$TmdbGenreDtoToJson(_TmdbGenreDto instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
