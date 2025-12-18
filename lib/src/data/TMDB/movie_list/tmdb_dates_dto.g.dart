// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_dates_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbDatesDto _$TmdbDatesDtoFromJson(Map<String, dynamic> json) =>
    _TmdbDatesDto(
      maximum: DateTime.parse(json['maximum'] as String),
      minimum: DateTime.parse(json['minimum'] as String),
    );

Map<String, dynamic> _$TmdbDatesDtoToJson(_TmdbDatesDto instance) =>
    <String, dynamic>{
      'maximum': instance.maximum.toIso8601String(),
      'minimum': instance.minimum.toIso8601String(),
    };
