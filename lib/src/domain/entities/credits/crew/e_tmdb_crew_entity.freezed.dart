// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_tmdb_crew_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TmdbCrewEntity {

 int get id; String get name; String? get profileUrl; String get job;
/// Create a copy of TmdbCrewEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbCrewEntityCopyWith<TmdbCrewEntity> get copyWith => _$TmdbCrewEntityCopyWithImpl<TmdbCrewEntity>(this as TmdbCrewEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbCrewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profileUrl,job);

@override
String toString() {
  return 'TmdbCrewEntity(id: $id, name: $name, profileUrl: $profileUrl, job: $job)';
}


}

/// @nodoc
abstract mixin class $TmdbCrewEntityCopyWith<$Res>  {
  factory $TmdbCrewEntityCopyWith(TmdbCrewEntity value, $Res Function(TmdbCrewEntity) _then) = _$TmdbCrewEntityCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? profileUrl, String job
});




}
/// @nodoc
class _$TmdbCrewEntityCopyWithImpl<$Res>
    implements $TmdbCrewEntityCopyWith<$Res> {
  _$TmdbCrewEntityCopyWithImpl(this._self, this._then);

  final TmdbCrewEntity _self;
  final $Res Function(TmdbCrewEntity) _then;

/// Create a copy of TmdbCrewEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? profileUrl = freezed,Object? job = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileUrl: freezed == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String?,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbCrewEntity].
extension TmdbCrewEntityPatterns on TmdbCrewEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbCrewEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbCrewEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbCrewEntity value)  $default,){
final _that = this;
switch (_that) {
case _TmdbCrewEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbCrewEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbCrewEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? profileUrl,  String job)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbCrewEntity() when $default != null:
return $default(_that.id,_that.name,_that.profileUrl,_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? profileUrl,  String job)  $default,) {final _that = this;
switch (_that) {
case _TmdbCrewEntity():
return $default(_that.id,_that.name,_that.profileUrl,_that.job);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? profileUrl,  String job)?  $default,) {final _that = this;
switch (_that) {
case _TmdbCrewEntity() when $default != null:
return $default(_that.id,_that.name,_that.profileUrl,_that.job);case _:
  return null;

}
}

}

/// @nodoc


class _TmdbCrewEntity implements TmdbCrewEntity {
   _TmdbCrewEntity({required this.id, required this.name, required this.profileUrl, required this.job});
  

@override final  int id;
@override final  String name;
@override final  String? profileUrl;
@override final  String job;

/// Create a copy of TmdbCrewEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbCrewEntityCopyWith<_TmdbCrewEntity> get copyWith => __$TmdbCrewEntityCopyWithImpl<_TmdbCrewEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbCrewEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileUrl, profileUrl) || other.profileUrl == profileUrl)&&(identical(other.job, job) || other.job == job));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,profileUrl,job);

@override
String toString() {
  return 'TmdbCrewEntity(id: $id, name: $name, profileUrl: $profileUrl, job: $job)';
}


}

/// @nodoc
abstract mixin class _$TmdbCrewEntityCopyWith<$Res> implements $TmdbCrewEntityCopyWith<$Res> {
  factory _$TmdbCrewEntityCopyWith(_TmdbCrewEntity value, $Res Function(_TmdbCrewEntity) _then) = __$TmdbCrewEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? profileUrl, String job
});




}
/// @nodoc
class __$TmdbCrewEntityCopyWithImpl<$Res>
    implements _$TmdbCrewEntityCopyWith<$Res> {
  __$TmdbCrewEntityCopyWithImpl(this._self, this._then);

  final _TmdbCrewEntity _self;
  final $Res Function(_TmdbCrewEntity) _then;

/// Create a copy of TmdbCrewEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? profileUrl = freezed,Object? job = null,}) {
  return _then(_TmdbCrewEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,profileUrl: freezed == profileUrl ? _self.profileUrl : profileUrl // ignore: cast_nullable_to_non_nullable
as String?,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
