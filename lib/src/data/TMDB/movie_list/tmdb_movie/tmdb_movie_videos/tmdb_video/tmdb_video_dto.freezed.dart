// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_video_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbVideoDto {

 String get name; String get key; String? get site; int? get size; String get id;
/// Create a copy of TmdbVideoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbVideoDtoCopyWith<TmdbVideoDto> get copyWith => _$TmdbVideoDtoCopyWithImpl<TmdbVideoDto>(this as TmdbVideoDto, _$identity);

  /// Serializes this TmdbVideoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbVideoDto&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,key,site,size,id);

@override
String toString() {
  return 'TmdbVideoDto(name: $name, key: $key, site: $site, size: $size, id: $id)';
}


}

/// @nodoc
abstract mixin class $TmdbVideoDtoCopyWith<$Res>  {
  factory $TmdbVideoDtoCopyWith(TmdbVideoDto value, $Res Function(TmdbVideoDto) _then) = _$TmdbVideoDtoCopyWithImpl;
@useResult
$Res call({
 String name, String key, String? site, int? size, String id
});




}
/// @nodoc
class _$TmdbVideoDtoCopyWithImpl<$Res>
    implements $TmdbVideoDtoCopyWith<$Res> {
  _$TmdbVideoDtoCopyWithImpl(this._self, this._then);

  final TmdbVideoDto _self;
  final $Res Function(TmdbVideoDto) _then;

/// Create a copy of TmdbVideoDto
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


/// Adds pattern-matching-related methods to [TmdbVideoDto].
extension TmdbVideoDtoPatterns on TmdbVideoDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbVideoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbVideoDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbVideoDto value)  $default,){
final _that = this;
switch (_that) {
case _TmdbVideoDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbVideoDto value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbVideoDto() when $default != null:
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
case _TmdbVideoDto() when $default != null:
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
case _TmdbVideoDto():
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
case _TmdbVideoDto() when $default != null:
return $default(_that.name,_that.key,_that.site,_that.size,_that.id);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TmdbVideoDto implements TmdbVideoDto {
   _TmdbVideoDto({required this.name, required this.key, this.site, this.size, required this.id});
  factory _TmdbVideoDto.fromJson(Map<String, dynamic> json) => _$TmdbVideoDtoFromJson(json);

@override final  String name;
@override final  String key;
@override final  String? site;
@override final  int? size;
@override final  String id;

/// Create a copy of TmdbVideoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbVideoDtoCopyWith<_TmdbVideoDto> get copyWith => __$TmdbVideoDtoCopyWithImpl<_TmdbVideoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbVideoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbVideoDto&&(identical(other.name, name) || other.name == name)&&(identical(other.key, key) || other.key == key)&&(identical(other.site, site) || other.site == site)&&(identical(other.size, size) || other.size == size)&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,key,site,size,id);

@override
String toString() {
  return 'TmdbVideoDto(name: $name, key: $key, site: $site, size: $size, id: $id)';
}


}

/// @nodoc
abstract mixin class _$TmdbVideoDtoCopyWith<$Res> implements $TmdbVideoDtoCopyWith<$Res> {
  factory _$TmdbVideoDtoCopyWith(_TmdbVideoDto value, $Res Function(_TmdbVideoDto) _then) = __$TmdbVideoDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String key, String? site, int? size, String id
});




}
/// @nodoc
class __$TmdbVideoDtoCopyWithImpl<$Res>
    implements _$TmdbVideoDtoCopyWith<$Res> {
  __$TmdbVideoDtoCopyWithImpl(this._self, this._then);

  final _TmdbVideoDto _self;
  final $Res Function(_TmdbVideoDto) _then;

/// Create a copy of TmdbVideoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? key = null,Object? site = freezed,Object? size = freezed,Object? id = null,}) {
  return _then(_TmdbVideoDto(
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
