// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_tmdb_genre_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbGenreDto {

 int get id; String get name;
/// Create a copy of TmdbGenreDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbGenreDtoCopyWith<TmdbGenreDto> get copyWith => _$TmdbGenreDtoCopyWithImpl<TmdbGenreDto>(this as TmdbGenreDto, _$identity);

  /// Serializes this TmdbGenreDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbGenreDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TmdbGenreDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $TmdbGenreDtoCopyWith<$Res>  {
  factory $TmdbGenreDtoCopyWith(TmdbGenreDto value, $Res Function(TmdbGenreDto) _then) = _$TmdbGenreDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$TmdbGenreDtoCopyWithImpl<$Res>
    implements $TmdbGenreDtoCopyWith<$Res> {
  _$TmdbGenreDtoCopyWithImpl(this._self, this._then);

  final TmdbGenreDto _self;
  final $Res Function(TmdbGenreDto) _then;

/// Create a copy of TmdbGenreDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbGenreDto].
extension TmdbGenreDtoPatterns on TmdbGenreDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbGenreDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbGenreDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbGenreDto value)  $default,){
final _that = this;
switch (_that) {
case _TmdbGenreDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbGenreDto value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbGenreDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbGenreDto() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _TmdbGenreDto():
return $default(_that.id,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _TmdbGenreDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TmdbGenreDto implements TmdbGenreDto {
  const _TmdbGenreDto({required this.id, required this.name});
  factory _TmdbGenreDto.fromJson(Map<String, dynamic> json) => _$TmdbGenreDtoFromJson(json);

@override final  int id;
@override final  String name;

/// Create a copy of TmdbGenreDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbGenreDtoCopyWith<_TmdbGenreDto> get copyWith => __$TmdbGenreDtoCopyWithImpl<_TmdbGenreDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbGenreDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbGenreDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'TmdbGenreDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$TmdbGenreDtoCopyWith<$Res> implements $TmdbGenreDtoCopyWith<$Res> {
  factory _$TmdbGenreDtoCopyWith(_TmdbGenreDto value, $Res Function(_TmdbGenreDto) _then) = __$TmdbGenreDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$TmdbGenreDtoCopyWithImpl<$Res>
    implements _$TmdbGenreDtoCopyWith<$Res> {
  __$TmdbGenreDtoCopyWithImpl(this._self, this._then);

  final _TmdbGenreDto _self;
  final $Res Function(_TmdbGenreDto) _then;

/// Create a copy of TmdbGenreDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_TmdbGenreDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
