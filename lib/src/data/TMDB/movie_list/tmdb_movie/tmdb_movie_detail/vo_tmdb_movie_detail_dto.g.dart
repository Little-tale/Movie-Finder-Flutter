// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_tmdb_movie_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TmdbMovieDetailDto _$TmdbMovieDetailDtoFromJson(Map<String, dynamic> json) =>
    _TmdbMovieDetailDto(
      adult: json['adult'] as bool? ?? false,
      backdropPath: json['backdrop_path'] as String?,
      budget: (json['budget'] as num?)?.toInt(),
      genres:
          (json['genres'] as List<dynamic>?)
              ?.map((e) => TmdbGenreDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <TmdbGenreDto>[],
      homepage: json['homepage'] as String?,
      id: (json['id'] as num).toInt(),
      imdbId: json['imdb_id'] as String?,
      originCountry:
          (json['origin_country'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      originalLanguage: json['original_language'] as String?,
      originalTitle: json['original_title'] as String?,
      overview: json['overview'] as String?,
      popularity: (json['popularity'] as num?)?.toDouble(),
      posterPath: json['poster_path'] as String?,
      productionCompanies:
          (json['production_companies'] as List<dynamic>?)
              ?.map(
                (e) => ProductCompanyDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <ProductCompanyDto>[],
      releaseDate: const NullableDateTimeConverter().fromJson(
        json['release_date'] as String?,
      ),
      revenue: (json['revenue'] as num?)?.toInt(),
      runtime: (json['runtime'] as num?)?.toInt(),
      status: json['status'] as String?,
      tagline: json['tagline'] as String?,
      title: json['title'] as String?,
      video: json['video'] as bool? ?? false,
      voteAverage: (json['vote_average'] as num?)?.toDouble(),
      voteCount: (json['vote_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TmdbMovieDetailDtoToJson(_TmdbMovieDetailDto instance) =>
    <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'budget': instance.budget,
      'genres': instance.genres,
      'homepage': instance.homepage,
      'id': instance.id,
      'imdb_id': instance.imdbId,
      'origin_country': instance.originCountry,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'production_companies': instance.productionCompanies,
      'release_date': const NullableDateTimeConverter().toJson(
        instance.releaseDate,
      ),
      'revenue': instance.revenue,
      'runtime': instance.runtime,
      'status': instance.status,
      'tagline': instance.tagline,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
    };
