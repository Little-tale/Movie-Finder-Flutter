// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_rated_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopRatedDTO _$TopRatedDTOFromJson(Map<String, dynamic> json) => _TopRatedDTO(
  totalPages: (json['total_pages'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  results: (json['results'] as List<dynamic>)
      .map((e) => TmdbMovieDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  totalResults: (json['total_results'] as num).toInt(),
);

Map<String, dynamic> _$TopRatedDTOToJson(_TopRatedDTO instance) =>
    <String, dynamic>{
      'total_pages': instance.totalPages,
      'page': instance.page,
      'results': instance.results,
      'total_results': instance.totalResults,
    };
