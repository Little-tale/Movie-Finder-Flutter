// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_movie_video_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieVideoEntity {

 String get name; String get key; String? get site; int? get size; String get id;
/// Create a copy of MovieVideoEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieVideoEntityCopyWith<MovieVideoEntity> get copyWith => _$MovieVideoEntityCopyWithImpl<MovieVideoEntity>(this as MovieVideoEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieVideoEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,name,key,site,size,id);

@override
String toString() {
  return 'MovieVideoEntity(name: $name, key: $key, site: $site, size: $size, id: $id)';
}


}

/// @nodoc
abstract mixin class $MovieVideoEntityCopyWith<$Res>  {
  factory $MovieVideoEntityCopyWith(MovieVideoEntity value, $Res Function(MovieVideoEntity) _then) = _$MovieVideoEntityCopyWithImpl;
@useResult
$Res call({
 String name, String key, String? site, int? size, String id
});




}
/// @nodoc
class _$MovieVideoEntityCopyWithImpl<$Res>
    implements $MovieVideoEntityCopyWith<$Res> {
  _$MovieVideoEntityCopyWithImpl(this._self, this._then);

  final MovieVideoEntity _self;
  final $Res Function(MovieVideoEntity) _then;

/// Create a copy of MovieVideoEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? key = null,Object? site = freezed,Object? size = freezed,Object? id = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieVideoEntity].
extension MovieVideoEntityPatterns on MovieVideoEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieVideoEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieVideoEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieVideoEntity value)  $default,){
final _that = this;
switch (_that) {
case _MovieVideoEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieVideoEntity value)?  $default,){
final _that = this;
switch (_that) {
case _MovieVideoEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String key,  String? site,  int? size,  String id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieVideoEntity() when $default != null:
return $default(_that.name,_that.key,_that.site,_that.size,_that.id);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String key,  String? site,  int? size,  String id)  $default,) {final _that = this;
switch (_that) {
case _MovieVideoEntity():
return $default(_that.name,_that.key,_that.site,_that.size,_that.id);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String key,  String? site,  int? size,  String id)?  $default,) {final _that = this;
switch (_that) {
case _MovieVideoEntity() when $default != null:
return $default(_that.name,_that.key,_that.site,_that.size,_that.id);case _:
  return null;

}
}

}

/// @nodoc


class _MovieVideoEntity implements MovieVideoEntity {
   _MovieVideoEntity({required this.name, required this.key, this.site, this.size, required this.id});
  

@override final  String name;
@override final  String key;
@override final  String? site;
@override final  int? size;
@override final  String id;

/// Create a copy of MovieVideoEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieVideoEntityCopyWith<_MovieVideoEntity> get copyWith => __$MovieVideoEntityCopyWithImpl<_MovieVideoEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieVideoEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,name,key,site,size,id);

@override
String toString() {
  return 'MovieVideoEntity(name: $name, key: $key, site: $site, size: $size, id: $id)';
}


}

/// @nodoc
abstract mixin class _$MovieVideoEntityCopyWith<$Res> implements $MovieVideoEntityCopyWith<$Res> {
  factory _$MovieVideoEntityCopyWith(_MovieVideoEntity value, $Res Function(_MovieVideoEntity) _then) = __$MovieVideoEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String key, String? site, int? size, String id
});




}
/// @nodoc
class __$MovieVideoEntityCopyWithImpl<$Res>
    implements _$MovieVideoEntityCopyWith<$Res> {
  __$MovieVideoEntityCopyWithImpl(this._self, this._then);

  final _MovieVideoEntity _self;
  final $Res Function(_MovieVideoEntity) _then;

/// Create a copy of MovieVideoEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? key = null,Object? site = freezed,Object? size = freezed,Object? id = null,}) {
  return _then(_MovieVideoEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,site: freezed == site ? _self.site : site // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as int?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
