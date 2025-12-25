// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_movie_videos_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbMovieVideosDto {

 int get id; List<TmdbVideoDto> get results;
/// Create a copy of TmdbMovieVideosDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbMovieVideosDtoCopyWith<TmdbMovieVideosDto> get copyWith => _$TmdbMovieVideosDtoCopyWithImpl<TmdbMovieVideosDto>(this as TmdbMovieVideosDto, _$identity);

  /// Serializes this TmdbMovieVideosDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbMovieVideosDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'TmdbMovieVideosDto(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class $TmdbMovieVideosDtoCopyWith<$Res>  {
  factory $TmdbMovieVideosDtoCopyWith(TmdbMovieVideosDto value, $Res Function(TmdbMovieVideosDto) _then) = _$TmdbMovieVideosDtoCopyWithImpl;
@useResult
$Res call({
 int id, List<TmdbVideoDto> results
});




}
/// @nodoc
class _$TmdbMovieVideosDtoCopyWithImpl<$Res>
    implements $TmdbMovieVideosDtoCopyWith<$Res> {
  _$TmdbMovieVideosDtoCopyWithImpl(this._self, this._then);

  final TmdbMovieVideosDto _self;
  final $Res Function(TmdbMovieVideosDto) _then;

/// Create a copy of TmdbMovieVideosDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? results = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<TmdbVideoDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbMovieVideosDto].
extension TmdbMovieVideosDtoPatterns on TmdbMovieVideosDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbMovieVideosDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbMovieVideosDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbMovieVideosDto value)  $default,){
final _that = this;
switch (_that) {
case _TmdbMovieVideosDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbMovieVideosDto value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbMovieVideosDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  List<TmdbVideoDto> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbMovieVideosDto() when $default != null:
return $default(_that.id,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  List<TmdbVideoDto> results)  $default,) {final _that = this;
switch (_that) {
case _TmdbMovieVideosDto():
return $default(_that.id,_that.results);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  List<TmdbVideoDto> results)?  $default,) {final _that = this;
switch (_that) {
case _TmdbMovieVideosDto() when $default != null:
return $default(_that.id,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TmdbMovieVideosDto implements TmdbMovieVideosDto {
   _TmdbMovieVideosDto({required this.id, required final  List<TmdbVideoDto> results}): _results = results;
  factory _TmdbMovieVideosDto.fromJson(Map<String, dynamic> json) => _$TmdbMovieVideosDtoFromJson(json);

@override final  int id;
 final  List<TmdbVideoDto> _results;
@override List<TmdbVideoDto> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of TmdbMovieVideosDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbMovieVideosDtoCopyWith<_TmdbMovieVideosDto> get copyWith => __$TmdbMovieVideosDtoCopyWithImpl<_TmdbMovieVideosDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbMovieVideosDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbMovieVideosDto&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'TmdbMovieVideosDto(id: $id, results: $results)';
}


}

/// @nodoc
abstract mixin class _$TmdbMovieVideosDtoCopyWith<$Res> implements $TmdbMovieVideosDtoCopyWith<$Res> {
  factory _$TmdbMovieVideosDtoCopyWith(_TmdbMovieVideosDto value, $Res Function(_TmdbMovieVideosDto) _then) = __$TmdbMovieVideosDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, List<TmdbVideoDto> results
});




}
/// @nodoc
class __$TmdbMovieVideosDtoCopyWithImpl<$Res>
    implements _$TmdbMovieVideosDtoCopyWith<$Res> {
  __$TmdbMovieVideosDtoCopyWithImpl(this._self, this._then);

  final _TmdbMovieVideosDto _self;
  final $Res Function(_TmdbMovieVideosDto) _then;

/// Create a copy of TmdbMovieVideosDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? results = null,}) {
  return _then(_TmdbMovieVideosDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<TmdbVideoDto>,
  ));
}


}

// dart format on
