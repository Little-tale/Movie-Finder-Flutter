// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_tmdb_credits_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$TmdbCreditsEntity {

 List<TmdbCastEntity> get cast; List<TmdbCrewEntity> get crew;
/// Create a copy of TmdbCreditsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbCreditsEntityCopyWith<TmdbCreditsEntity> get copyWith => _$TmdbCreditsEntityCopyWithImpl<TmdbCreditsEntity>(this as TmdbCreditsEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbCreditsEntity&&const DeepCollectionEquality().equals(other.cast, cast)&&const DeepCollectionEquality().equals(other.crew, crew));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(cast),const DeepCollectionEquality().hash(crew));

@override
String toString() {
  return 'TmdbCreditsEntity(cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class $TmdbCreditsEntityCopyWith<$Res>  {
  factory $TmdbCreditsEntityCopyWith(TmdbCreditsEntity value, $Res Function(TmdbCreditsEntity) _then) = _$TmdbCreditsEntityCopyWithImpl;
@useResult
$Res call({
 List<TmdbCastEntity> cast, List<TmdbCrewEntity> crew
});




}
/// @nodoc
class _$TmdbCreditsEntityCopyWithImpl<$Res>
    implements $TmdbCreditsEntityCopyWith<$Res> {
  _$TmdbCreditsEntityCopyWithImpl(this._self, this._then);

  final TmdbCreditsEntity _self;
  final $Res Function(TmdbCreditsEntity) _then;

/// Create a copy of TmdbCreditsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? cast = null,Object? crew = null,}) {
  return _then(_self.copyWith(
cast: null == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<TmdbCastEntity>,crew: null == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<TmdbCrewEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbCreditsEntity].
extension TmdbCreditsEntityPatterns on TmdbCreditsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbCreditsEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbCreditsEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbCreditsEntity value)  $default,){
final _that = this;
switch (_that) {
case _TmdbCreditsEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbCreditsEntity value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbCreditsEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TmdbCastEntity> cast,  List<TmdbCrewEntity> crew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbCreditsEntity() when $default != null:
return $default(_that.cast,_that.crew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TmdbCastEntity> cast,  List<TmdbCrewEntity> crew)  $default,) {final _that = this;
switch (_that) {
case _TmdbCreditsEntity():
return $default(_that.cast,_that.crew);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TmdbCastEntity> cast,  List<TmdbCrewEntity> crew)?  $default,) {final _that = this;
switch (_that) {
case _TmdbCreditsEntity() when $default != null:
return $default(_that.cast,_that.crew);case _:
  return null;

}
}

}

/// @nodoc


class _TmdbCreditsEntity implements TmdbCreditsEntity {
   _TmdbCreditsEntity({required final  List<TmdbCastEntity> cast, required final  List<TmdbCrewEntity> crew}): _cast = cast,_crew = crew;
  

 final  List<TmdbCastEntity> _cast;
@override List<TmdbCastEntity> get cast {
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cast);
}

 final  List<TmdbCrewEntity> _crew;
@override List<TmdbCrewEntity> get crew {
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crew);
}


/// Create a copy of TmdbCreditsEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbCreditsEntityCopyWith<_TmdbCreditsEntity> get copyWith => __$TmdbCreditsEntityCopyWithImpl<_TmdbCreditsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbCreditsEntity&&const DeepCollectionEquality().equals(other._cast, _cast)&&const DeepCollectionEquality().equals(other._crew, _crew));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cast),const DeepCollectionEquality().hash(_crew));

@override
String toString() {
  return 'TmdbCreditsEntity(cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class _$TmdbCreditsEntityCopyWith<$Res> implements $TmdbCreditsEntityCopyWith<$Res> {
  factory _$TmdbCreditsEntityCopyWith(_TmdbCreditsEntity value, $Res Function(_TmdbCreditsEntity) _then) = __$TmdbCreditsEntityCopyWithImpl;
@override @useResult
$Res call({
 List<TmdbCastEntity> cast, List<TmdbCrewEntity> crew
});




}
/// @nodoc
class __$TmdbCreditsEntityCopyWithImpl<$Res>
    implements _$TmdbCreditsEntityCopyWith<$Res> {
  __$TmdbCreditsEntityCopyWithImpl(this._self, this._then);

  final _TmdbCreditsEntity _self;
  final $Res Function(_TmdbCreditsEntity) _then;

/// Create a copy of TmdbCreditsEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? cast = null,Object? crew = null,}) {
  return _then(_TmdbCreditsEntity(
cast: null == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<TmdbCastEntity>,crew: null == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<TmdbCrewEntity>,
  ));
}


}

// dart format on
