// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorite_movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FavoriteMovie {

 String get movieId; String get title; String? get posterPath; DateTime get likedAt; List<int> get genreIds;
/// Create a copy of FavoriteMovie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FavoriteMovieCopyWith<FavoriteMovie> get copyWith => _$FavoriteMovieCopyWithImpl<FavoriteMovie>(this as FavoriteMovie, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FavoriteMovie&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.likedAt, likedAt) || other.likedAt == likedAt)&&const DeepCollectionEquality().equals(other.genreIds, genreIds));
}


@override
int get hashCode => Object.hash(runtimeType,movieId,title,posterPath,likedAt,const DeepCollectionEquality().hash(genreIds));

@override
String toString() {
  return 'FavoriteMovie(movieId: $movieId, title: $title, posterPath: $posterPath, likedAt: $likedAt, genreIds: $genreIds)';
}


}

/// @nodoc
abstract mixin class $FavoriteMovieCopyWith<$Res>  {
  factory $FavoriteMovieCopyWith(FavoriteMovie value, $Res Function(FavoriteMovie) _then) = _$FavoriteMovieCopyWithImpl;
@useResult
$Res call({
 String movieId, String title, String? posterPath, DateTime likedAt, List<int> genreIds
});




}
/// @nodoc
class _$FavoriteMovieCopyWithImpl<$Res>
    implements $FavoriteMovieCopyWith<$Res> {
  _$FavoriteMovieCopyWithImpl(this._self, this._then);

  final FavoriteMovie _self;
  final $Res Function(FavoriteMovie) _then;

/// Create a copy of FavoriteMovie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movieId = null,Object? title = null,Object? posterPath = freezed,Object? likedAt = null,Object? genreIds = null,}) {
  return _then(_self.copyWith(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,likedAt: null == likedAt ? _self.likedAt : likedAt // ignore: cast_nullable_to_non_nullable
as DateTime,genreIds: null == genreIds ? _self.genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}

}


/// Adds pattern-matching-related methods to [FavoriteMovie].
extension FavoriteMoviePatterns on FavoriteMovie {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FavoriteMovie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FavoriteMovie() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FavoriteMovie value)  $default,){
final _that = this;
switch (_that) {
case _FavoriteMovie():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FavoriteMovie value)?  $default,){
final _that = this;
switch (_that) {
case _FavoriteMovie() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String movieId,  String title,  String? posterPath,  DateTime likedAt,  List<int> genreIds)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FavoriteMovie() when $default != null:
return $default(_that.movieId,_that.title,_that.posterPath,_that.likedAt,_that.genreIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String movieId,  String title,  String? posterPath,  DateTime likedAt,  List<int> genreIds)  $default,) {final _that = this;
switch (_that) {
case _FavoriteMovie():
return $default(_that.movieId,_that.title,_that.posterPath,_that.likedAt,_that.genreIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String movieId,  String title,  String? posterPath,  DateTime likedAt,  List<int> genreIds)?  $default,) {final _that = this;
switch (_that) {
case _FavoriteMovie() when $default != null:
return $default(_that.movieId,_that.title,_that.posterPath,_that.likedAt,_that.genreIds);case _:
  return null;

}
}

}

/// @nodoc


class _FavoriteMovie extends FavoriteMovie {
  const _FavoriteMovie({required this.movieId, required this.title, this.posterPath, required this.likedAt, required final  List<int> genreIds}): _genreIds = genreIds,super._();
  

@override final  String movieId;
@override final  String title;
@override final  String? posterPath;
@override final  DateTime likedAt;
 final  List<int> _genreIds;
@override List<int> get genreIds {
  if (_genreIds is EqualUnmodifiableListView) return _genreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genreIds);
}


/// Create a copy of FavoriteMovie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FavoriteMovieCopyWith<_FavoriteMovie> get copyWith => __$FavoriteMovieCopyWithImpl<_FavoriteMovie>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FavoriteMovie&&(identical(other.movieId, movieId) || other.movieId == movieId)&&(identical(other.title, title) || other.title == title)&&(identical(other.posterPath, posterPath) || other.posterPath == posterPath)&&(identical(other.likedAt, likedAt) || other.likedAt == likedAt)&&const DeepCollectionEquality().equals(other._genreIds, _genreIds));
}


@override
int get hashCode => Object.hash(runtimeType,movieId,title,posterPath,likedAt,const DeepCollectionEquality().hash(_genreIds));

@override
String toString() {
  return 'FavoriteMovie(movieId: $movieId, title: $title, posterPath: $posterPath, likedAt: $likedAt, genreIds: $genreIds)';
}


}

/// @nodoc
abstract mixin class _$FavoriteMovieCopyWith<$Res> implements $FavoriteMovieCopyWith<$Res> {
  factory _$FavoriteMovieCopyWith(_FavoriteMovie value, $Res Function(_FavoriteMovie) _then) = __$FavoriteMovieCopyWithImpl;
@override @useResult
$Res call({
 String movieId, String title, String? posterPath, DateTime likedAt, List<int> genreIds
});




}
/// @nodoc
class __$FavoriteMovieCopyWithImpl<$Res>
    implements _$FavoriteMovieCopyWith<$Res> {
  __$FavoriteMovieCopyWithImpl(this._self, this._then);

  final _FavoriteMovie _self;
  final $Res Function(_FavoriteMovie) _then;

/// Create a copy of FavoriteMovie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movieId = null,Object? title = null,Object? posterPath = freezed,Object? likedAt = null,Object? genreIds = null,}) {
  return _then(_FavoriteMovie(
movieId: null == movieId ? _self.movieId : movieId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,posterPath: freezed == posterPath ? _self.posterPath : posterPath // ignore: cast_nullable_to_non_nullable
as String?,likedAt: null == likedAt ? _self.likedAt : likedAt // ignore: cast_nullable_to_non_nullable
as DateTime,genreIds: null == genreIds ? _self._genreIds : genreIds // ignore: cast_nullable_to_non_nullable
as List<int>,
  ));
}


}

// dart format on
