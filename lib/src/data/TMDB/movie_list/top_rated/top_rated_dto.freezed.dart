// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_rated_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TopRatedDTO {

@JsonKey(name: 'total_pages') int get totalPages; int get page; List<TmdbMovieDto> get results;@JsonKey(name: 'total_results') int get totalResults;
/// Create a copy of TopRatedDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TopRatedDTOCopyWith<TopRatedDTO> get copyWith => _$TopRatedDTOCopyWithImpl<TopRatedDTO>(this as TopRatedDTO, _$identity);

  /// Serializes this TopRatedDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TopRatedDTO&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPages,page,const DeepCollectionEquality().hash(results),totalResults);

@override
String toString() {
  return 'TopRatedDTO(totalPages: $totalPages, page: $page, results: $results, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $TopRatedDTOCopyWith<$Res>  {
  factory $TopRatedDTOCopyWith(TopRatedDTO value, $Res Function(TopRatedDTO) _then) = _$TopRatedDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'total_pages') int totalPages, int page, List<TmdbMovieDto> results,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class _$TopRatedDTOCopyWithImpl<$Res>
    implements $TopRatedDTOCopyWith<$Res> {
  _$TopRatedDTOCopyWithImpl(this._self, this._then);

  final TopRatedDTO _self;
  final $Res Function(TopRatedDTO) _then;

/// Create a copy of TopRatedDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalPages = null,Object? page = null,Object? results = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<TmdbMovieDto>,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TopRatedDTO].
extension TopRatedDTOPatterns on TopRatedDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TopRatedDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TopRatedDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TopRatedDTO value)  $default,){
final _that = this;
switch (_that) {
case _TopRatedDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TopRatedDTO value)?  $default,){
final _that = this;
switch (_that) {
case _TopRatedDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_pages')  int totalPages,  int page,  List<TmdbMovieDto> results, @JsonKey(name: 'total_results')  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TopRatedDTO() when $default != null:
return $default(_that.totalPages,_that.page,_that.results,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'total_pages')  int totalPages,  int page,  List<TmdbMovieDto> results, @JsonKey(name: 'total_results')  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _TopRatedDTO():
return $default(_that.totalPages,_that.page,_that.results,_that.totalResults);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'total_pages')  int totalPages,  int page,  List<TmdbMovieDto> results, @JsonKey(name: 'total_results')  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _TopRatedDTO() when $default != null:
return $default(_that.totalPages,_that.page,_that.results,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TopRatedDTO implements TopRatedDTO {
   _TopRatedDTO({@JsonKey(name: 'total_pages') required this.totalPages, required this.page, required final  List<TmdbMovieDto> results, @JsonKey(name: 'total_results') required this.totalResults}): _results = results;
  factory _TopRatedDTO.fromJson(Map<String, dynamic> json) => _$TopRatedDTOFromJson(json);

@override@JsonKey(name: 'total_pages') final  int totalPages;
@override final  int page;
 final  List<TmdbMovieDto> _results;
@override List<TmdbMovieDto> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey(name: 'total_results') final  int totalResults;

/// Create a copy of TopRatedDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TopRatedDTOCopyWith<_TopRatedDTO> get copyWith => __$TopRatedDTOCopyWithImpl<_TopRatedDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TopRatedDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TopRatedDTO&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalPages,page,const DeepCollectionEquality().hash(_results),totalResults);

@override
String toString() {
  return 'TopRatedDTO(totalPages: $totalPages, page: $page, results: $results, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$TopRatedDTOCopyWith<$Res> implements $TopRatedDTOCopyWith<$Res> {
  factory _$TopRatedDTOCopyWith(_TopRatedDTO value, $Res Function(_TopRatedDTO) _then) = __$TopRatedDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'total_pages') int totalPages, int page, List<TmdbMovieDto> results,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class __$TopRatedDTOCopyWithImpl<$Res>
    implements _$TopRatedDTOCopyWith<$Res> {
  __$TopRatedDTOCopyWithImpl(this._self, this._then);

  final _TopRatedDTO _self;
  final $Res Function(_TopRatedDTO) _then;

/// Create a copy of TopRatedDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalPages = null,Object? page = null,Object? results = null,Object? totalResults = null,}) {
  return _then(_TopRatedDTO(
totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<TmdbMovieDto>,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
