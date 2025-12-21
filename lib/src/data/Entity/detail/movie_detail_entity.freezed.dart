// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailEntity {

 String? get backImageUrlString; String? get posterImageUrlString; String get movieName; String get movieDetailString; bool get likeState; DateTime? get releaseDate; double get voteAverage; List<String> get genres; List<ProductCompanyEntity> get productionCompanies;
/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailEntityCopyWith<MovieDetailEntity> get copyWith => _$MovieDetailEntityCopyWithImpl<MovieDetailEntity>(this as MovieDetailEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailEntity&&(identical(other.backImageUrlString, backImageUrlString) || other.backImageUrlString == backImageUrlString)&&(identical(other.posterImageUrlString, posterImageUrlString) || other.posterImageUrlString == posterImageUrlString)&&(identical(other.movieName, movieName) || other.movieName == movieName)&&(identical(other.movieDetailString, movieDetailString) || other.movieDetailString == movieDetailString)&&(identical(other.likeState, likeState) || other.likeState == likeState)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&const DeepCollectionEquality().equals(other.genres, genres)&&const DeepCollectionEquality().equals(other.productionCompanies, productionCompanies));
}


@override
int get hashCode => Object.hash(runtimeType,backImageUrlString,posterImageUrlString,movieName,movieDetailString,likeState,releaseDate,voteAverage,const DeepCollectionEquality().hash(genres),const DeepCollectionEquality().hash(productionCompanies));

@override
String toString() {
  return 'MovieDetailEntity(backImageUrlString: $backImageUrlString, posterImageUrlString: $posterImageUrlString, movieName: $movieName, movieDetailString: $movieDetailString, likeState: $likeState, releaseDate: $releaseDate, voteAverage: $voteAverage, genres: $genres, productionCompanies: $productionCompanies)';
}


}

/// @nodoc
abstract mixin class $MovieDetailEntityCopyWith<$Res>  {
  factory $MovieDetailEntityCopyWith(MovieDetailEntity value, $Res Function(MovieDetailEntity) _then) = _$MovieDetailEntityCopyWithImpl;
@useResult
$Res call({
 String? backImageUrlString, String? posterImageUrlString, String movieName, String movieDetailString, bool likeState, DateTime? releaseDate, double voteAverage, List<String> genres, List<ProductCompanyEntity> productionCompanies
});




}
/// @nodoc
class _$MovieDetailEntityCopyWithImpl<$Res>
    implements $MovieDetailEntityCopyWith<$Res> {
  _$MovieDetailEntityCopyWithImpl(this._self, this._then);

  final MovieDetailEntity _self;
  final $Res Function(MovieDetailEntity) _then;

/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? backImageUrlString = freezed,Object? posterImageUrlString = freezed,Object? movieName = null,Object? movieDetailString = null,Object? likeState = null,Object? releaseDate = freezed,Object? voteAverage = null,Object? genres = null,Object? productionCompanies = null,}) {
  return _then(_self.copyWith(
backImageUrlString: freezed == backImageUrlString ? _self.backImageUrlString : backImageUrlString // ignore: cast_nullable_to_non_nullable
as String?,posterImageUrlString: freezed == posterImageUrlString ? _self.posterImageUrlString : posterImageUrlString // ignore: cast_nullable_to_non_nullable
as String?,movieName: null == movieName ? _self.movieName : movieName // ignore: cast_nullable_to_non_nullable
as String,movieDetailString: null == movieDetailString ? _self.movieDetailString : movieDetailString // ignore: cast_nullable_to_non_nullable
as String,likeState: null == likeState ? _self.likeState : likeState // ignore: cast_nullable_to_non_nullable
as bool,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,genres: null == genres ? _self.genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,productionCompanies: null == productionCompanies ? _self.productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductCompanyEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieDetailEntity].
extension MovieDetailEntityPatterns on MovieDetailEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? backImageUrlString,  String? posterImageUrlString,  String movieName,  String movieDetailString,  bool likeState,  DateTime? releaseDate,  double voteAverage,  List<String> genres,  List<ProductCompanyEntity> productionCompanies)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
return $default(_that.backImageUrlString,_that.posterImageUrlString,_that.movieName,_that.movieDetailString,_that.likeState,_that.releaseDate,_that.voteAverage,_that.genres,_that.productionCompanies);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? backImageUrlString,  String? posterImageUrlString,  String movieName,  String movieDetailString,  bool likeState,  DateTime? releaseDate,  double voteAverage,  List<String> genres,  List<ProductCompanyEntity> productionCompanies)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailEntity():
return $default(_that.backImageUrlString,_that.posterImageUrlString,_that.movieName,_that.movieDetailString,_that.likeState,_that.releaseDate,_that.voteAverage,_that.genres,_that.productionCompanies);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? backImageUrlString,  String? posterImageUrlString,  String movieName,  String movieDetailString,  bool likeState,  DateTime? releaseDate,  double voteAverage,  List<String> genres,  List<ProductCompanyEntity> productionCompanies)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailEntity() when $default != null:
return $default(_that.backImageUrlString,_that.posterImageUrlString,_that.movieName,_that.movieDetailString,_that.likeState,_that.releaseDate,_that.voteAverage,_that.genres,_that.productionCompanies);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailEntity implements MovieDetailEntity {
   _MovieDetailEntity({required this.backImageUrlString, required this.posterImageUrlString, required this.movieName, required this.movieDetailString, required this.likeState, required this.releaseDate, required this.voteAverage, required final  List<String> genres, required final  List<ProductCompanyEntity> productionCompanies}): _genres = genres,_productionCompanies = productionCompanies;
  

@override final  String? backImageUrlString;
@override final  String? posterImageUrlString;
@override final  String movieName;
@override final  String movieDetailString;
@override final  bool likeState;
@override final  DateTime? releaseDate;
@override final  double voteAverage;
 final  List<String> _genres;
@override List<String> get genres {
  if (_genres is EqualUnmodifiableListView) return _genres;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genres);
}

 final  List<ProductCompanyEntity> _productionCompanies;
@override List<ProductCompanyEntity> get productionCompanies {
  if (_productionCompanies is EqualUnmodifiableListView) return _productionCompanies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productionCompanies);
}


/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailEntityCopyWith<_MovieDetailEntity> get copyWith => __$MovieDetailEntityCopyWithImpl<_MovieDetailEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailEntity&&(identical(other.backImageUrlString, backImageUrlString) || other.backImageUrlString == backImageUrlString)&&(identical(other.posterImageUrlString, posterImageUrlString) || other.posterImageUrlString == posterImageUrlString)&&(identical(other.movieName, movieName) || other.movieName == movieName)&&(identical(other.movieDetailString, movieDetailString) || other.movieDetailString == movieDetailString)&&(identical(other.likeState, likeState) || other.likeState == likeState)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.voteAverage, voteAverage) || other.voteAverage == voteAverage)&&const DeepCollectionEquality().equals(other._genres, _genres)&&const DeepCollectionEquality().equals(other._productionCompanies, _productionCompanies));
}


@override
int get hashCode => Object.hash(runtimeType,backImageUrlString,posterImageUrlString,movieName,movieDetailString,likeState,releaseDate,voteAverage,const DeepCollectionEquality().hash(_genres),const DeepCollectionEquality().hash(_productionCompanies));

@override
String toString() {
  return 'MovieDetailEntity(backImageUrlString: $backImageUrlString, posterImageUrlString: $posterImageUrlString, movieName: $movieName, movieDetailString: $movieDetailString, likeState: $likeState, releaseDate: $releaseDate, voteAverage: $voteAverage, genres: $genres, productionCompanies: $productionCompanies)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailEntityCopyWith<$Res> implements $MovieDetailEntityCopyWith<$Res> {
  factory _$MovieDetailEntityCopyWith(_MovieDetailEntity value, $Res Function(_MovieDetailEntity) _then) = __$MovieDetailEntityCopyWithImpl;
@override @useResult
$Res call({
 String? backImageUrlString, String? posterImageUrlString, String movieName, String movieDetailString, bool likeState, DateTime? releaseDate, double voteAverage, List<String> genres, List<ProductCompanyEntity> productionCompanies
});




}
/// @nodoc
class __$MovieDetailEntityCopyWithImpl<$Res>
    implements _$MovieDetailEntityCopyWith<$Res> {
  __$MovieDetailEntityCopyWithImpl(this._self, this._then);

  final _MovieDetailEntity _self;
  final $Res Function(_MovieDetailEntity) _then;

/// Create a copy of MovieDetailEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? backImageUrlString = freezed,Object? posterImageUrlString = freezed,Object? movieName = null,Object? movieDetailString = null,Object? likeState = null,Object? releaseDate = freezed,Object? voteAverage = null,Object? genres = null,Object? productionCompanies = null,}) {
  return _then(_MovieDetailEntity(
backImageUrlString: freezed == backImageUrlString ? _self.backImageUrlString : backImageUrlString // ignore: cast_nullable_to_non_nullable
as String?,posterImageUrlString: freezed == posterImageUrlString ? _self.posterImageUrlString : posterImageUrlString // ignore: cast_nullable_to_non_nullable
as String?,movieName: null == movieName ? _self.movieName : movieName // ignore: cast_nullable_to_non_nullable
as String,movieDetailString: null == movieDetailString ? _self.movieDetailString : movieDetailString // ignore: cast_nullable_to_non_nullable
as String,likeState: null == likeState ? _self.likeState : likeState // ignore: cast_nullable_to_non_nullable
as bool,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,voteAverage: null == voteAverage ? _self.voteAverage : voteAverage // ignore: cast_nullable_to_non_nullable
as double,genres: null == genres ? _self._genres : genres // ignore: cast_nullable_to_non_nullable
as List<String>,productionCompanies: null == productionCompanies ? _self._productionCompanies : productionCompanies // ignore: cast_nullable_to_non_nullable
as List<ProductCompanyEntity>,
  ));
}


}

// dart format on
