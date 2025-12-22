// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_credit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieCreditDto {

 int get id; List<MovieCastDTO> get cast; List<MovieCrewDTO> get crew;
/// Create a copy of MovieCreditDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCreditDtoCopyWith<MovieCreditDto> get copyWith => _$MovieCreditDtoCopyWithImpl<MovieCreditDto>(this as MovieCreditDto, _$identity);

  /// Serializes this MovieCreditDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieCreditDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.cast, cast)&&const DeepCollectionEquality().equals(other.crew, crew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(cast),const DeepCollectionEquality().hash(crew));

@override
String toString() {
  return 'MovieCreditDto(id: $id, cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class $MovieCreditDtoCopyWith<$Res>  {
  factory $MovieCreditDtoCopyWith(MovieCreditDto value, $Res Function(MovieCreditDto) _then) = _$MovieCreditDtoCopyWithImpl;
@useResult
$Res call({
 int id, List<MovieCastDTO> cast, List<MovieCrewDTO> crew
});




}
/// @nodoc
class _$MovieCreditDtoCopyWithImpl<$Res>
    implements $MovieCreditDtoCopyWith<$Res> {
  _$MovieCreditDtoCopyWithImpl(this._self, this._then);

  final MovieCreditDto _self;
  final $Res Function(MovieCreditDto) _then;

/// Create a copy of MovieCreditDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? cast = null,Object? crew = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cast: null == cast ? _self.cast : cast // ignore: cast_nullable_to_non_nullable
as List<MovieCastDTO>,crew: null == crew ? _self.crew : crew // ignore: cast_nullable_to_non_nullable
as List<MovieCrewDTO>,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieCreditDto].
extension MovieCreditDtoPatterns on MovieCreditDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieCreditDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieCreditDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieCreditDto value)  $default,){
final _that = this;
switch (_that) {
case _MovieCreditDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieCreditDto value)?  $default,){
final _that = this;
switch (_that) {
case _MovieCreditDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<MovieCastDTO> cast,  List<MovieCrewDTO> crew)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieCreditDto() when $default != null:
return $default(_that.id,_that.cast,_that.crew);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<MovieCastDTO> cast,  List<MovieCrewDTO> crew)  $default,) {final _that = this;
switch (_that) {
case _MovieCreditDto():
return $default(_that.id,_that.cast,_that.crew);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<MovieCastDTO> cast,  List<MovieCrewDTO> crew)?  $default,) {final _that = this;
switch (_that) {
case _MovieCreditDto() when $default != null:
return $default(_that.id,_that.cast,_that.crew);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MovieCreditDto implements MovieCreditDto {
   _MovieCreditDto({required this.id, required final  List<MovieCastDTO> cast, required final  List<MovieCrewDTO> crew}): _cast = cast,_crew = crew;
  factory _MovieCreditDto.fromJson(Map<String, dynamic> json) => _$MovieCreditDtoFromJson(json);

@override final  int id;
 final  List<MovieCastDTO> _cast;
@override List<MovieCastDTO> get cast {
  if (_cast is EqualUnmodifiableListView) return _cast;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cast);
}

 final  List<MovieCrewDTO> _crew;
@override List<MovieCrewDTO> get crew {
  if (_crew is EqualUnmodifiableListView) return _crew;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_crew);
}


/// Create a copy of MovieCreditDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCreditDtoCopyWith<_MovieCreditDto> get copyWith => __$MovieCreditDtoCopyWithImpl<_MovieCreditDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieCreditDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieCreditDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._cast, _cast)&&const DeepCollectionEquality().equals(other._crew, _crew));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_cast),const DeepCollectionEquality().hash(_crew));

@override
String toString() {
  return 'MovieCreditDto(id: $id, cast: $cast, crew: $crew)';
}


}

/// @nodoc
abstract mixin class _$MovieCreditDtoCopyWith<$Res> implements $MovieCreditDtoCopyWith<$Res> {
  factory _$MovieCreditDtoCopyWith(_MovieCreditDto value, $Res Function(_MovieCreditDto) _then) = __$MovieCreditDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, List<MovieCastDTO> cast, List<MovieCrewDTO> crew
});




}
/// @nodoc
class __$MovieCreditDtoCopyWithImpl<$Res>
    implements _$MovieCreditDtoCopyWith<$Res> {
  __$MovieCreditDtoCopyWithImpl(this._self, this._then);

  final _MovieCreditDto _self;
  final $Res Function(_MovieCreditDto) _then;

/// Create a copy of MovieCreditDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? cast = null,Object? crew = null,}) {
  return _then(_MovieCreditDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,cast: null == cast ? _self._cast : cast // ignore: cast_nullable_to_non_nullable
as List<MovieCastDTO>,crew: null == crew ? _self._crew : crew // ignore: cast_nullable_to_non_nullable
as List<MovieCrewDTO>,
  ));
}


}

// dart format on
