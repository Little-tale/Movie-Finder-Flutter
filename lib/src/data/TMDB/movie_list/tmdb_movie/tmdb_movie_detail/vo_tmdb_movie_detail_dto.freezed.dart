// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_tmdb_movie_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbMovieDetailDto {

 bool get adult;@JsonKey(name: 'backdrop_path') String? get backdropPath; int? get budget; List<TmdbGenreDto> get genres; String? get homepage; int get id;@JsonKey(name: 'imdb_id') String? get imdbId;@JsonKey(name: 'origin_country') List<String> get originCountry;@JsonKey(name: 'original_language') String? get originalLanguage;@JsonKey(name: 'original_title') String? get originalTitle; String? get overview; double? get popularity;@JsonKey(name: 'poster_path') String? get posterPath;@JsonKey(name: 'production_companies') List<ProductCompanyDto> get productionCompanies;@JsonKey(name: 'release_date')@NullableDateTimeConverter() DateTime? get releaseDate; int? get revenue; int? get runtime; String? get status; String? get tagline; String? get title; bool get video;@JsonKey(name: 'vote_average') double? get voteAverage;@JsonKey(name: 'vote_count') int? get voteCount;
/// Create a copy of TmdbMovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbMovieDetailDtoCopyWith<TmdbMovieDetailDto> get copyWith => _$TmdbMovieDetailDtoCopyWithImpl<TmdbMovieDetailDto>(this as TmdbMovieDetailDto, _$identity);

  /// Serializes this TmdbMovieDetailDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbMovieDetailDto&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other.genres, genres)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other.originCountry, originCountry)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&const DeepCollectionEquality().equals(other.productionCompanies, productionCompanies)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,adult,backdropPath,budget,const DeepCollectionEquality().hash(genres),homepage,id,imdbId,const DeepCollectionEquality().hash(originCountry),originalLanguage,originalTitle,overview,popularity,posterPath,const DeepCollectionEquality().hash(productionCompanies),releaseDate,revenue,runtime,status,tagline,title,video,voteAverage,voteCount]);

@override
String toString() {
  return 'TmdbMovieDetailDto(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class $TmdbMovieDetailDtoCopyWith<$Res>  {
  factory $TmdbMovieDetailDtoCopyWith(TmdbMovieDetailDto value, $Res Function(TmdbMovieDetailDto) _then) = _$TmdbMovieDetailDtoCopyWithImpl;
@useResult
$Res call({
 bool adult,@JsonKey(name: 'backdrop_path') String? backdropPath, int? budget, List<TmdbGenreDto> genres, String? homepage, int id,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'origin_country') List<String> originCountry,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, String? overview, double? popularity,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'production_companies') List<ProductCompanyDto> productionCompanies,@JsonKey(name: 'release_date')@NullableDateTimeConverter() DateTime? releaseDate, int? revenue, int? runtime, String? status, String? tagline, String? title, bool video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class _$TmdbMovieDetailDtoCopyWithImpl<$Res>
    implements $TmdbMovieDetailDtoCopyWith<$Res> {
  _$TmdbMovieDetailDtoCopyWithImpl(this._self, this._then);

  final TmdbMovieDetailDto _self;
  final $Res Function(TmdbMovieDetailDto) _then;

/// Create a copy of TmdbMovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? backdropPath = freezed,Object? budget = freezed,Object? genres = null,Object? homepage = freezed,Object? id = null,Object? imdbId = freezed,Object? originCountry = null,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? popularity = freezed,Object? posterPath = freezed,Object? productionCompanies = null,Object? releaseDate = freezed,Object? revenue = freezed,Object? runtime = freezed,Object? status = freezed,Object? tagline = freezed,Object? title = freezed,Object? video = null,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<TmdbGenreDto>,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,productionCompanies: null == productionCompanies ? _self.productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductCompanyDto>,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbMovieDetailDto].
extension TmdbMovieDetailDtoPatterns on TmdbMovieDetailDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbMovieDetailDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbMovieDetailDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbMovieDetailDto value)  $default,){
final _that = this;
switch (_that) {
case _TmdbMovieDetailDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbMovieDetailDto value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbMovieDetailDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? budget,  List<TmdbGenreDto> genres,  String? homepage,  int id, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'origin_country')  List<String> originCountry, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  double? popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'production_companies')  List<ProductCompanyDto> productionCompanies, @JsonKey(name: 'release_date')@NullableDateTimeConverter()  DateTime? releaseDate,  int? revenue,  int? runtime,  String? status,  String? tagline,  String? title,  bool video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbMovieDetailDto() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.budget,_that.genres,_that.homepage,_that.id,_that.imdbId,_that.originCountry,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.productionCompanies,_that.releaseDate,_that.revenue,_that.runtime,_that.status,_that.tagline,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? budget,  List<TmdbGenreDto> genres,  String? homepage,  int id, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'origin_country')  List<String> originCountry, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  double? popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'production_companies')  List<ProductCompanyDto> productionCompanies, @JsonKey(name: 'release_date')@NullableDateTimeConverter()  DateTime? releaseDate,  int? revenue,  int? runtime,  String? status,  String? tagline,  String? title,  bool video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)  $default,) {final _that = this;
switch (_that) {
case _TmdbMovieDetailDto():
return $default(_that.adult,_that.backdropPath,_that.budget,_that.genres,_that.homepage,_that.id,_that.imdbId,_that.originCountry,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.productionCompanies,_that.releaseDate,_that.revenue,_that.runtime,_that.status,_that.tagline,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult, @JsonKey(name: 'backdrop_path')  String? backdropPath,  int? budget,  List<TmdbGenreDto> genres,  String? homepage,  int id, @JsonKey(name: 'imdb_id')  String? imdbId, @JsonKey(name: 'origin_country')  List<String> originCountry, @JsonKey(name: 'original_language')  String? originalLanguage, @JsonKey(name: 'original_title')  String? originalTitle,  String? overview,  double? popularity, @JsonKey(name: 'poster_path')  String? posterPath, @JsonKey(name: 'production_companies')  List<ProductCompanyDto> productionCompanies, @JsonKey(name: 'release_date')@NullableDateTimeConverter()  DateTime? releaseDate,  int? revenue,  int? runtime,  String? status,  String? tagline,  String? title,  bool video, @JsonKey(name: 'vote_average')  double? voteAverage, @JsonKey(name: 'vote_count')  int? voteCount)?  $default,) {final _that = this;
switch (_that) {
case _TmdbMovieDetailDto() when $default != null:
return $default(_that.adult,_that.backdropPath,_that.budget,_that.genres,_that.homepage,_that.id,_that.imdbId,_that.originCountry,_that.originalLanguage,_that.originalTitle,_that.overview,_that.popularity,_that.posterPath,_that.productionCompanies,_that.releaseDate,_that.revenue,_that.runtime,_that.status,_that.tagline,_that.title,_that.video,_that.voteAverage,_that.voteCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TmdbMovieDetailDto implements TmdbMovieDetailDto {
  const _TmdbMovieDetailDto({this.adult = false, @JsonKey(name: 'backdrop_path') this.backdropPath, this.budget, final  List<TmdbGenreDto> genres = const <TmdbGenreDto>[], this.homepage, required this.id, @JsonKey(name: 'imdb_id') this.imdbId, @JsonKey(name: 'origin_country') final  List<String> originCountry = const <String>[], @JsonKey(name: 'original_language') this.originalLanguage, @JsonKey(name: 'original_title') this.originalTitle, this.overview, this.popularity, @JsonKey(name: 'poster_path') this.posterPath, @JsonKey(name: 'production_companies') final  List<ProductCompanyDto> productionCompanies = const <ProductCompanyDto>[], @JsonKey(name: 'release_date')@NullableDateTimeConverter() this.releaseDate, this.revenue, this.runtime, this.status, this.tagline, this.title, this.video = false, @JsonKey(name: 'vote_average') this.voteAverage, @JsonKey(name: 'vote_count') this.voteCount}): _genres = genres,_originCountry = originCountry,_productionCompanies = productionCompanies;
  factory _TmdbMovieDetailDto.fromJson(Map<String, dynamic> json) => _$TmdbMovieDetailDtoFromJson(json);

@override@JsonKey() final  bool adult;
@override@JsonKey(name: 'backdrop_path') final  String? backdropPath;
@override final  int? budget;
 final  List<TmdbGenreDto> _genres;
@override@JsonKey() List<TmdbGenreDto> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

@override final  String? homepage;
@override final  int id;
@override@JsonKey(name: 'imdb_id') final  String? imdbId;
 final  List<String> _originCountry;
@override@JsonKey(name: 'origin_country') List<String> get originCountry {
  if (_originCountry is EqualUnmodifiableListView) return _originCountry;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_originCountry);
}

@override@JsonKey(name: 'original_language') final  String? originalLanguage;
@override@JsonKey(name: 'original_title') final  String? originalTitle;
@override final  String? overview;
@override final  double? popularity;
@override@JsonKey(name: 'poster_path') final  String? posterPath;
 final  List<ProductCompanyDto> _productionCompanies;
@override@JsonKey(name: 'production_companies') List<ProductCompanyDto> get productionCompanies {
  if (_productionCompanies is EqualUnmodifiableListView) return _productionCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productionCompanies);
}

@override@JsonKey(name: 'release_date')@NullableDateTimeConverter() final  DateTime? releaseDate;
@override final  int? revenue;
@override final  int? runtime;
@override final  String? status;
@override final  String? tagline;
@override final  String? title;
@override@JsonKey() final  bool video;
@override@JsonKey(name: 'vote_average') final  double? voteAverage;
@override@JsonKey(name: 'vote_count') final  int? voteCount;

/// Create a copy of TmdbMovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbMovieDetailDtoCopyWith<_TmdbMovieDetailDto> get copyWith => __$TmdbMovieDetailDtoCopyWithImpl<_TmdbMovieDetailDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbMovieDetailDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbMovieDetailDto&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.backdropPath, backdropPath) || other.backdropPath == backdropPath)&&(identical(other.budget, budget) || other.budget == budget)&&const DeepCollectionEquality().equals(other._genres, _genres)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.id, id) || other.id == id)&&(identical(other.imdbId, imdbId) || other.imdbId == imdbId)&&const DeepCollectionEquality().equals(other._originCountry, _originCountry)&&(identical(other.originalLanguage, originalLanguage) || other.originalLanguage == originalLanguage)&&(identical(other.originalTitle, originalTitle) || other.originalTitle == originalTitle)&&(identical(other.overview, overview) || other.overview == overview)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&const DeepCollectionEquality().equals(other._productionCompanies, _productionCompanies)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.revenue, revenue) || other.revenue == revenue)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.status, status) || other.status == status)&&(identical(other.tagline, tagline) || other.tagline == tagline)&&(identical(other.title, title) || other.title == title)&&(identical(other.video, video) || other.video == video)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&(identical(other.voteCount, voteCount) || other.voteCount == voteCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,adult,backdropPath,budget,const DeepCollectionEquality().hash(_genres),homepage,id,imdbId,const DeepCollectionEquality().hash(_originCountry),originalLanguage,originalTitle,overview,popularity,posterPath,const DeepCollectionEquality().hash(_productionCompanies),releaseDate,revenue,runtime,status,tagline,title,video,voteAverage,voteCount]);

@override
String toString() {
  return 'TmdbMovieDetailDto(adult: $adult, backdropPath: $backdropPath, budget: $budget, genres: $genres, homepage: $homepage, id: $id, imdbId: $imdbId, originCountry: $originCountry, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, productionCompanies: $productionCompanies, releaseDate: $releaseDate, revenue: $revenue, runtime: $runtime, status: $status, tagline: $tagline, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount)';
}


}

/// @nodoc
abstract mixin class _$TmdbMovieDetailDtoCopyWith<$Res> implements $TmdbMovieDetailDtoCopyWith<$Res> {
  factory _$TmdbMovieDetailDtoCopyWith(_TmdbMovieDetailDto value, $Res Function(_TmdbMovieDetailDto) _then) = __$TmdbMovieDetailDtoCopyWithImpl;
@override @useResult
$Res call({
 bool adult,@JsonKey(name: 'backdrop_path') String? backdropPath, int? budget, List<TmdbGenreDto> genres, String? homepage, int id,@JsonKey(name: 'imdb_id') String? imdbId,@JsonKey(name: 'origin_country') List<String> originCountry,@JsonKey(name: 'original_language') String? originalLanguage,@JsonKey(name: 'original_title') String? originalTitle, String? overview, double? popularity,@JsonKey(name: 'poster_path') String? posterPath,@JsonKey(name: 'production_companies') List<ProductCompanyDto> productionCompanies,@JsonKey(name: 'release_date')@NullableDateTimeConverter() DateTime? releaseDate, int? revenue, int? runtime, String? status, String? tagline, String? title, bool video,@JsonKey(name: 'vote_average') double? voteAverage,@JsonKey(name: 'vote_count') int? voteCount
});




}
/// @nodoc
class __$TmdbMovieDetailDtoCopyWithImpl<$Res>
    implements _$TmdbMovieDetailDtoCopyWith<$Res> {
  __$TmdbMovieDetailDtoCopyWithImpl(this._self, this._then);

  final _TmdbMovieDetailDto _self;
  final $Res Function(_TmdbMovieDetailDto) _then;

/// Create a copy of TmdbMovieDetailDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? backdropPath = freezed,Object? budget = freezed,Object? genres = null,Object? homepage = freezed,Object? id = null,Object? imdbId = freezed,Object? originCountry = null,Object? originalLanguage = freezed,Object? originalTitle = freezed,Object? overview = freezed,Object? popularity = freezed,Object? posterPath = freezed,Object? productionCompanies = null,Object? releaseDate = freezed,Object? revenue = freezed,Object? runtime = freezed,Object? status = freezed,Object? tagline = freezed,Object? title = freezed,Object? video = null,Object? voteAverage = freezed,Object? voteCount = freezed,}) {
  return _then(_TmdbMovieDetailDto(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,backdropPath: freezed == backdropPath ? _self.backdropPath : backdropPath // ignore: cast_nullable_to_non_nullable
as String?,budget: freezed == budget ? _self.budget : budget // ignore: cast_nullable_to_non_nullable
as int?,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<TmdbGenreDto>,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,imdbId: freezed == imdbId ? _self.imdbId : imdbId // ignore: cast_nullable_to_non_nullable
as String?,originCountry: null == originCountry ? _self._originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as List<String>,originalLanguage: freezed == originalLanguage ? _self.originalLanguage : originalLanguage // ignore: cast_nullable_to_non_nullable
as String?,originalTitle: freezed == originalTitle ? _self.originalTitle : originalTitle // ignore: cast_nullable_to_non_nullable
as String?,overview: freezed == overview ? _self.overview : overview // ignore: cast_nullable_to_non_nullable
as String?,popularity: freezed == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double?,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,productionCompanies: null == productionCompanies ? _self._productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductCompanyDto>,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,revenue: freezed == revenue ? _self.revenue : revenue // ignore: cast_nullable_to_non_nullable
as int?,runtime: freezed == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,tagline: freezed == tagline ? _self.tagline : tagline // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,video: null == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as bool,voteAverage: freezed == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double?,voteCount: freezed == voteCount ? _self.voteCount : voteCount // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
