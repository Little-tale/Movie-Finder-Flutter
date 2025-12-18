// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_up_comming_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbUpcomingDTO _$TmdbUpcomingDTOFromJson(Map<String, dynamic> json) =>
    _TmdbUpcomingDTO(
      dates: TmdbDatesDto.fromJson(json['dates'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => TmdbMovieDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalPages: (json['total_pages'] as num).toInt(),
      totalResults: (json['total_results'] as num).toInt(),
    );

Map<String, dynamic> _$TmdbUpcomingDTOToJson(_TmdbUpcomingDTO instance) =>
    <String, dynamic>{
      'dates': instance.dates,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
