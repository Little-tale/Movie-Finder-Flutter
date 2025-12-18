// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_dates_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbDatesDto {

 DateTime get maximum; DateTime get minimum;
/// Create a copy of TmdbDatesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbDatesDtoCopyWith<TmdbDatesDto> get copyWith => _$TmdbDatesDtoCopyWithImpl<TmdbDatesDto>(this as TmdbDatesDto, _$identity);

  /// Serializes this TmdbDatesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbDatesDto&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.minimum, minimum) || other.minimum == minimum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maximum,minimum);

@override
String toString() {
  return 'TmdbDatesDto(maximum: $maximum, minimum: $minimum)';
}


}

/// @nodoc
abstract mixin class $TmdbDatesDtoCopyWith<$Res>  {
  factory $TmdbDatesDtoCopyWith(TmdbDatesDto value, $Res Function(TmdbDatesDto) _then) = _$TmdbDatesDtoCopyWithImpl;
@useResult
$Res call({
 DateTime maximum, DateTime minimum
});




}
/// @nodoc
class _$TmdbDatesDtoCopyWithImpl<$Res>
    implements $TmdbDatesDtoCopyWith<$Res> {
  _$TmdbDatesDtoCopyWithImpl(this._self, this._then);

  final TmdbDatesDto _self;
  final $Res Function(TmdbDatesDto) _then;

/// Create a copy of TmdbDatesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? maximum = null,Object? minimum = null,}) {
  return _then(_self.copyWith(
maximum: null == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as DateTime,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbDatesDto].
extension TmdbDatesDtoPatterns on TmdbDatesDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbDatesDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbDatesDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbDatesDto value)  $default,){
final _that = this;
switch (_that) {
case _TmdbDatesDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbDatesDto value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbDatesDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( DateTime maximum,  DateTime minimum)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbDatesDto() when $default != null:
return $default(_that.maximum,_that.minimum);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( DateTime maximum,  DateTime minimum)  $default,) {final _that = this;
switch (_that) {
case _TmdbDatesDto():
return $default(_that.maximum,_that.minimum);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( DateTime maximum,  DateTime minimum)?  $default,) {final _that = this;
switch (_that) {
case _TmdbDatesDto() when $default != null:
return $default(_that.maximum,_that.minimum);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TmdbDatesDto implements TmdbDatesDto {
   _TmdbDatesDto({required this.maximum, required this.minimum});
  factory _TmdbDatesDto.fromJson(Map<String, dynamic> json) => _$TmdbDatesDtoFromJson(json);

@override final  DateTime maximum;
@override final  DateTime minimum;

/// Create a copy of TmdbDatesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbDatesDtoCopyWith<_TmdbDatesDto> get copyWith => __$TmdbDatesDtoCopyWithImpl<_TmdbDatesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbDatesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbDatesDto&&(identical(other.maximum, maximum) || other.maximum == maximum)&&(identical(other.minimum, minimum) || other.minimum == minimum));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,maximum,minimum);

@override
String toString() {
  return 'TmdbDatesDto(maximum: $maximum, minimum: $minimum)';
}


}

/// @nodoc
abstract mixin class _$TmdbDatesDtoCopyWith<$Res> implements $TmdbDatesDtoCopyWith<$Res> {
  factory _$TmdbDatesDtoCopyWith(_TmdbDatesDto value, $Res Function(_TmdbDatesDto) _then) = __$TmdbDatesDtoCopyWithImpl;
@override @useResult
$Res call({
 DateTime maximum, DateTime minimum
});




}
/// @nodoc
class __$TmdbDatesDtoCopyWithImpl<$Res>
    implements _$TmdbDatesDtoCopyWith<$Res> {
  __$TmdbDatesDtoCopyWithImpl(this._self, this._then);

  final _TmdbDatesDto _self;
  final $Res Function(_TmdbDatesDto) _then;

/// Create a copy of TmdbDatesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? maximum = null,Object? minimum = null,}) {
  return _then(_TmdbDatesDto(
maximum: null == maximum ? _self.maximum : maximum // ignore: cast_nullable_to_non_nullable
as DateTime,minimum: null == minimum ? _self.minimum : minimum // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
