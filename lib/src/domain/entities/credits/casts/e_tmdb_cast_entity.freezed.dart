// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_tmdb_cast_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TmdbCastEntity {

 String get name; String get characterName; String? get profileUrl;
/// Create a copy of TmdbCastEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbCastEntityCopyWith<TmdbCastEntity> get copyWith => _$TmdbCastEntityCopyWithImpl<TmdbCastEntity>(this as TmdbCastEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbCastEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.characterName, characterName) || other.characterName == characterName)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,characterName,profileUrl);

@override
String toString() {
  return 'TmdbCastEntity(name: $name, characterName: $characterName, profileUrl: $profileUrl)';
}


}

/// @nodoc
abstract mixin class $TmdbCastEntityCopyWith<$Res>  {
  factory $TmdbCastEntityCopyWith(TmdbCastEntity value, $Res Function(TmdbCastEntity) _then) = _$TmdbCastEntityCopyWithImpl;
@useResult
$Res call({
 String name, String characterName, String? profileUrl
});




}
/// @nodoc
class _$TmdbCastEntityCopyWithImpl<$Res>
    implements $TmdbCastEntityCopyWith<$Res> {
  _$TmdbCastEntityCopyWithImpl(this._self, this._then);

  final TmdbCastEntity _self;
  final $Res Function(TmdbCastEntity) _then;

/// Create a copy of TmdbCastEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? characterName = null,Object? profileUrl = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,characterName: null == characterName ? _self.characterName : characterName // ignore: cast_nullable_to_non_nullable
as String,profileUrl: freezed == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbCastEntity].
extension TmdbCastEntityPatterns on TmdbCastEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbCastEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbCastEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbCastEntity value)  $default,){
final _that = this;
switch (_that) {
case _TmdbCastEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbCastEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbCastEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String characterName,  String? profileUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbCastEntity() when $default != null:
return $default(_that.name,_that.characterName,_that.profileUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String characterName,  String? profileUrl)  $default,) {final _that = this;
switch (_that) {
case _TmdbCastEntity():
return $default(_that.name,_that.characterName,_that.profileUrl);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String characterName,  String? profileUrl)?  $default,) {final _that = this;
switch (_that) {
case _TmdbCastEntity() when $default != null:
return $default(_that.name,_that.characterName,_that.profileUrl);case _:
  return null;

}
}

}

/// @nodoc


class _TmdbCastEntity implements TmdbCastEntity {
   _TmdbCastEntity({required this.name, required this.characterName, required this.profileUrl});
  

@override final  String name;
@override final  String characterName;
@override final  String? profileUrl;

/// Create a copy of TmdbCastEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbCastEntityCopyWith<_TmdbCastEntity> get copyWith => __$TmdbCastEntityCopyWithImpl<_TmdbCastEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbCastEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.characterName, characterName) || other.characterName == characterName)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl));
}


@override
int get hashCode => Object.hash(runtimeType,name,characterName,profileUrl);

@override
String toString() {
  return 'TmdbCastEntity(name: $name, characterName: $characterName, profileUrl: $profileUrl)';
}


}

/// @nodoc
abstract mixin class _$TmdbCastEntityCopyWith<$Res> implements $TmdbCastEntityCopyWith<$Res> {
  factory _$TmdbCastEntityCopyWith(_TmdbCastEntity value, $Res Function(_TmdbCastEntity) _then) = __$TmdbCastEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String characterName, String? profileUrl
});




}
/// @nodoc
class __$TmdbCastEntityCopyWithImpl<$Res>
    implements _$TmdbCastEntityCopyWith<$Res> {
  __$TmdbCastEntityCopyWithImpl(this._self, this._then);

  final _TmdbCastEntity _self;
  final $Res Function(_TmdbCastEntity) _then;

/// Create a copy of TmdbCastEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? characterName = null,Object? profileUrl = freezed,}) {
  return _then(_TmdbCastEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,characterName: null == characterName ? _self.characterName : characterName // ignore: cast_nullable_to_non_nullable
as String,profileUrl: freezed == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
