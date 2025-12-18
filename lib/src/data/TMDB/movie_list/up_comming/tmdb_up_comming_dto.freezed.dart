// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tmdb_up_comming_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbUpcomingDTO {

 TmdbDatesDto get dates; List<TmdbMovieDto> get results;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'total_results') int get totalResults;
/// Create a copy of TmdbUpcomingDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbUpcomingDTOCopyWith<TmdbUpcomingDTO> get copyWith => _$TmdbUpcomingDTOCopyWithImpl<TmdbUpcomingDTO>(this as TmdbUpcomingDTO, _$identity);

  /// Serializes this TmdbUpcomingDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbUpcomingDTO&&(identical(other.dates, dates) || other.dates == dates)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dates,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'TmdbUpcomingDTO(dates: $dates, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $TmdbUpcomingDTOCopyWith<$Res>  {
  factory $TmdbUpcomingDTOCopyWith(TmdbUpcomingDTO value, $Res Function(TmdbUpcomingDTO) _then) = _$TmdbUpcomingDTOCopyWithImpl;
@useResult
$Res call({
 TmdbDatesDto dates, List<TmdbMovieDto> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});


$TmdbDatesDtoCopyWith<$Res> get dates;

}
/// @nodoc
class _$TmdbUpcomingDTOCopyWithImpl<$Res>
    implements $TmdbUpcomingDTOCopyWith<$Res> {
  _$TmdbUpcomingDTOCopyWithImpl(this._self, this._then);

  final TmdbUpcomingDTO _self;
  final $Res Function(TmdbUpcomingDTO) _then;

/// Create a copy of TmdbUpcomingDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dates = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
dates: null == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as TmdbDatesDto,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<TmdbMovieDto>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of TmdbUpcomingDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TmdbDatesDtoCopyWith<$Res> get dates {
  
  return $TmdbDatesDtoCopyWith<$Res>(_self.dates, (value) {
    return _then(_self.copyWith(dates: value));
  });
}
}


/// Adds pattern-matching-related methods to [TmdbUpcomingDTO].
extension TmdbUpcomingDTOPatterns on TmdbUpcomingDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbUpcomingDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbUpcomingDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbUpcomingDTO value)  $default,){
final _that = this;
switch (_that) {
case _TmdbUpcomingDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbUpcomingDTO value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbUpcomingDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( TmdbDatesDto dates,  List<TmdbMovieDto> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbUpcomingDTO() when $default != null:
return $default(_that.dates,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( TmdbDatesDto dates,  List<TmdbMovieDto> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _TmdbUpcomingDTO():
return $default(_that.dates,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( TmdbDatesDto dates,  List<TmdbMovieDto> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _TmdbUpcomingDTO() when $default != null:
return $default(_that.dates,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TmdbUpcomingDTO implements TmdbUpcomingDTO {
   _TmdbUpcomingDTO({required this.dates, required final  List<TmdbMovieDto> results, @JsonKey(name: 'total_pages') required this.totalPages, @JsonKey(name: 'total_results') required this.totalResults}): _results = results;
  factory _TmdbUpcomingDTO.fromJson(Map<String, dynamic> json) => _$TmdbUpcomingDTOFromJson(json);

@override final  TmdbDatesDto dates;
 final  List<TmdbMovieDto> _results;
@override List<TmdbMovieDto> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'total_results') final  int totalResults;

/// Create a copy of TmdbUpcomingDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbUpcomingDTOCopyWith<_TmdbUpcomingDTO> get copyWith => __$TmdbUpcomingDTOCopyWithImpl<_TmdbUpcomingDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TmdbUpcomingDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbUpcomingDTO&&(identical(other.dates, dates) || other.dates == dates)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,dates,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'TmdbUpcomingDTO(dates: $dates, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$TmdbUpcomingDTOCopyWith<$Res> implements $TmdbUpcomingDTOCopyWith<$Res> {
  factory _$TmdbUpcomingDTOCopyWith(_TmdbUpcomingDTO value, $Res Function(_TmdbUpcomingDTO) _then) = __$TmdbUpcomingDTOCopyWithImpl;
@override @useResult
$Res call({
 TmdbDatesDto dates, List<TmdbMovieDto> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});


@override $TmdbDatesDtoCopyWith<$Res> get dates;

}
/// @nodoc
class __$TmdbUpcomingDTOCopyWithImpl<$Res>
    implements _$TmdbUpcomingDTOCopyWith<$Res> {
  __$TmdbUpcomingDTOCopyWithImpl(this._self, this._then);

  final _TmdbUpcomingDTO _self;
  final $Res Function(_TmdbUpcomingDTO) _then;

/// Create a copy of TmdbUpcomingDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dates = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_TmdbUpcomingDTO(
dates: null == dates ? _self.dates : dates // ignore: cast_nullable_to_non_nullable
as TmdbDatesDto,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<TmdbMovieDto>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of TmdbUpcomingDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TmdbDatesDtoCopyWith<$Res> get dates {
  
  return $TmdbDatesDtoCopyWith<$Res>(_self.dates, (value) {
    return _then(_self.copyWith(dates: value));
  });
}
}

// dart format on
