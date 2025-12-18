// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_server_check.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbServerCheckDTO {

 bool get success;
/// Create a copy of TmdbServerCheckDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbServerCheckDTOCopyWith<TmdbServerCheckDTO> get copyWith => _$TmdbServerCheckDTOCopyWithImpl<TmdbServerCheckDTO>(this as TmdbServerCheckDTO, _$identity);

  /// Serializes this TmdbServerCheckDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbServerCheckDTO&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success);

@override
String toString() {
  return 'TmdbServerCheckDTO(success: $success)';
}


}

/// @nodoc
abstract mixin class $TmdbServerCheckDTOCopyWith<$Res>  {
  factory $TmdbServerCheckDTOCopyWith(TmdbServerCheckDTO value, $Res Function(TmdbServerCheckDTO) _then) = _$TmdbServerCheckDTOCopyWithImpl;
@useResult
$Res call({
 bool success
});




}
/// @nodoc
class _$TmdbServerCheckDTOCopyWithImpl<$Res>
    implements $TmdbServerCheckDTOCopyWith<$Res> {
  _$TmdbServerCheckDTOCopyWithImpl(this._self, this._then);

  final TmdbServerCheckDTO _self;
  final $Res Function(TmdbServerCheckDTO) _then;

/// Create a copy of TmdbServerCheckDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbServerCheckDTO].
extension TmdbServerCheckDTOPatterns on TmdbServerCheckDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbServerCheckDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbServerCheckDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbServerCheckDTO value)  $default,){
final _that = this;
switch (_that) {
case _TmdbServerCheckDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbServerCheckDTO value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbServerCheckDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbServerCheckDTO() when $default != null:
return $default(_that.success);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success)  $default,) {final _that = this;
switch (_that) {
case _TmdbServerCheckDTO():
return $default(_that.success);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success)?  $default,) {final _that = this;
switch (_that) {
case _TmdbServerCheckDTO() when $default != null:
return $default(_that.success);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TmdbServerCheckDTO implements TmdbServerCheckDTO {
  const _TmdbServerCheckDTO({required this.success});
  factory _TmdbServerCheckDTO.fromJson(Map<String, dynamic> json) => _$TmdbServerCheckDTOFromJson(json);

@override final  bool success;

/// Create a copy of TmdbServerCheckDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbServerCheckDTOCopyWith<_TmdbServerCheckDTO> get copyWith => __$TmdbServerCheckDTOCopyWithImpl<_TmdbServerCheckDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbServerCheckDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbServerCheckDTO&&(identical(other.success, success) || other.success == success));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success);

@override
String toString() {
  return 'TmdbServerCheckDTO(success: $success)';
}


}

/// @nodoc
abstract mixin class _$TmdbServerCheckDTOCopyWith<$Res> implements $TmdbServerCheckDTOCopyWith<$Res> {
  factory _$TmdbServerCheckDTOCopyWith(_TmdbServerCheckDTO value, $Res Function(_TmdbServerCheckDTO) _then) = __$TmdbServerCheckDTOCopyWithImpl;
@override @useResult
$Res call({
 bool success
});




}
/// @nodoc
class __$TmdbServerCheckDTOCopyWithImpl<$Res>
    implements _$TmdbServerCheckDTOCopyWith<$Res> {
  __$TmdbServerCheckDTOCopyWithImpl(this._self, this._then);

  final _TmdbServerCheckDTO _self;
  final $Res Function(_TmdbServerCheckDTO) _then;

/// Create a copy of TmdbServerCheckDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,}) {
  return _then(_TmdbServerCheckDTO(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
