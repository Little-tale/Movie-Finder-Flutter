// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_credit_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MovieCreditDto _$MovieCreditDtoFromJson(Map<String, dynamic> json) =>
    _MovieCreditDto(
      id: (json['id'] as num).toInt(),
      cast: (json['cast'] as List<dynamic>)
          .map((e) => MovieCastDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      crew: (json['crew'] as List<dynamic>)
          .map((e) => MovieCrewDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MovieCreditDtoToJson(_MovieCreditDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cast': instance.cast,
      'crew': instance.crew,
    };
