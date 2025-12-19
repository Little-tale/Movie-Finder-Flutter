// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_tmdb_common_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbCommonResultDto<R> _$TmdbCommonResultDtoFromJson<R>(
  Map<String, dynamic> json,
  R Function(Object? json) fromJsonR,
) => _TmdbCommonResultDto<R>(
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>).map(fromJsonR).toList(),
  totalPages: (json['total_pages'] as num).toInt(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$TmdbCommonResultDtoToJson<R>(
  _TmdbCommonResultDto<R> instance,
  Object? Function(R value) toJsonR,
) => <String, dynamic>{
  'page': instance.page,
  'results': instance.results.map(toJsonR).toList(),
  'total_pages': instance.totalPages,
  'total_results': instance.totalResults,
};
