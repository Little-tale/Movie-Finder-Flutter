// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tmdb_movie_videos_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbMovieVideosDto _$TmdbMovieVideosDtoFromJson(Map<String, dynamic> json) =>
    _TmdbMovieVideosDto(
      id: (json['id'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => TmdbVideoDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TmdbMovieVideosDtoToJson(_TmdbMovieVideosDto instance) =>
    <String, dynamic>{'id': instance.id, 'results': instance.results};
