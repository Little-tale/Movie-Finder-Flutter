// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_video_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbVideoDto _$TmdbVideoDtoFromJson(Map<String, dynamic> json) =>
    _TmdbVideoDto(
      name: json['name'] as String,
      key: json['key'] as String,
      site: json['site'] as String?,
      size: (json['size'] as num?)?.toInt(),
      id: json['id'] as String,
    );

Map<String, dynamic> _$TmdbVideoDtoToJson(_TmdbVideoDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'id': instance.id,
    };
