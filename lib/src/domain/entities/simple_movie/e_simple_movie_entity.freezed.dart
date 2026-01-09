// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_simple_movie_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SimpleMovieEntity {

 int get id; String get title; DateTime? get releaseDate; String? get posterUrl; String? get backgroundUrl; double get rating;
/// Create a copy of SimpleMovieEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SimpleMovieEntityCopyWith<SimpleMovieEntity> get copyWith => _$SimpleMovieEntityCopyWithImpl<SimpleMovieEntity>(this as SimpleMovieEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SimpleMovieEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,releaseDate,posterUrl,backgroundUrl,rating);

@override
String toString() {
  return 'SimpleMovieEntity(id: $id, title: $title, releaseDate: $releaseDate, posterUrl: $posterUrl, backgroundUrl: $backgroundUrl, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $SimpleMovieEntityCopyWith<$Res>  {
  factory $SimpleMovieEntityCopyWith(SimpleMovieEntity value, $Res Function(SimpleMovieEntity) _then) = _$SimpleMovieEntityCopyWithImpl;
@useResult
$Res call({
 int id, String title, DateTime? releaseDate, String? posterUrl, String? backgroundUrl, double rating
});




}
/// @nodoc
class _$SimpleMovieEntityCopyWithImpl<$Res>
    implements $SimpleMovieEntityCopyWith<$Res> {
  _$SimpleMovieEntityCopyWithImpl(this._self, this._then);

  final SimpleMovieEntity _self;
  final $Res Function(SimpleMovieEntity) _then;

/// Create a copy of SimpleMovieEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? releaseDate = freezed,Object? posterUrl = freezed,Object? backgroundUrl = freezed,Object? rating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,posterUrl: freezed == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [SimpleMovieEntity].
extension SimpleMovieEntityPatterns on SimpleMovieEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SimpleMovieEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SimpleMovieEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SimpleMovieEntity value)  $default,){
final _that = this;
switch (_that) {
case _SimpleMovieEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SimpleMovieEntity value)?  $default,){
final _that = this;
switch (_that) {
case _SimpleMovieEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  DateTime? releaseDate,  String? posterUrl,  String? backgroundUrl,  double rating)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SimpleMovieEntity() when $default != null:
return $default(_that.id,_that.title,_that.releaseDate,_that.posterUrl,_that.backgroundUrl,_that.rating);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  DateTime? releaseDate,  String? posterUrl,  String? backgroundUrl,  double rating)  $default,) {final _that = this;
switch (_that) {
case _SimpleMovieEntity():
return $default(_that.id,_that.title,_that.releaseDate,_that.posterUrl,_that.backgroundUrl,_that.rating);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  DateTime? releaseDate,  String? posterUrl,  String? backgroundUrl,  double rating)?  $default,) {final _that = this;
switch (_that) {
case _SimpleMovieEntity() when $default != null:
return $default(_that.id,_that.title,_that.releaseDate,_that.posterUrl,_that.backgroundUrl,_that.rating);case _:
  return null;

}
}

}

/// @nodoc


class _SimpleMovieEntity implements SimpleMovieEntity {
   _SimpleMovieEntity({required this.id, required this.title, this.releaseDate, this.posterUrl, this.backgroundUrl, required this.rating});
  

@override final  int id;
@override final  String title;
@override final  DateTime? releaseDate;
@override final  String? posterUrl;
@override final  String? backgroundUrl;
@override final  double rating;

/// Create a copy of SimpleMovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SimpleMovieEntityCopyWith<_SimpleMovieEntity> get copyWith => __$SimpleMovieEntityCopyWithImpl<_SimpleMovieEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SimpleMovieEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.releaseDate, releaseDate) || other.releaseDate == releaseDate)&&(identical(other.posterUrl, posterUrl) || other.posterUrl == posterUrl)&&(identical(other.backgroundUrl, backgroundUrl) || other.backgroundUrl == backgroundUrl)&&(identical(other.rating, rating) || other.rating == rating));
}


@override
int get hashCode => Object.hash(runtimeType,id,title,releaseDate,posterUrl,backgroundUrl,rating);

@override
String toString() {
  return 'SimpleMovieEntity(id: $id, title: $title, releaseDate: $releaseDate, posterUrl: $posterUrl, backgroundUrl: $backgroundUrl, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$SimpleMovieEntityCopyWith<$Res> implements $SimpleMovieEntityCopyWith<$Res> {
  factory _$SimpleMovieEntityCopyWith(_SimpleMovieEntity value, $Res Function(_SimpleMovieEntity) _then) = __$SimpleMovieEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, DateTime? releaseDate, String? posterUrl, String? backgroundUrl, double rating
});




}
/// @nodoc
class __$SimpleMovieEntityCopyWithImpl<$Res>
    implements _$SimpleMovieEntityCopyWith<$Res> {
  __$SimpleMovieEntityCopyWithImpl(this._self, this._then);

  final _SimpleMovieEntity _self;
  final $Res Function(_SimpleMovieEntity) _then;

/// Create a copy of SimpleMovieEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? releaseDate = freezed,Object? posterUrl = freezed,Object? backgroundUrl = freezed,Object? rating = null,}) {
  return _then(_SimpleMovieEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,releaseDate: freezed == releaseDate ? _self.releaseDate : releaseDate // ignore: cast_nullable_to_non_nullable
as DateTime?,posterUrl: freezed == posterUrl ? _self.posterUrl : posterUrl // ignore: cast_nullable_to_non_nullable
as String?,backgroundUrl: freezed == backgroundUrl ? _self.backgroundUrl : backgroundUrl // ignore: cast_nullable_to_non_nullable
as String?,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
