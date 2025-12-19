// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_tmdb_common_result_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TmdbCommonResultDto<R> {

 int get page; List<R> get results;@JsonKey(name: 'total_pages') int get totalPages;@JsonKey(name: 'total_results') int get totalResults;
/// Create a copy of TmdbCommonResultDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TmdbCommonResultDtoCopyWith<R, TmdbCommonResultDto<R>> get copyWith => _$TmdbCommonResultDtoCopyWithImpl<R, TmdbCommonResultDto<R>>(this as TmdbCommonResultDto<R>, _$identity);

  /// Serializes this TmdbCommonResultDto to a JSON map.
  Map<String, dynamic> toJson(Object? Function(R) toJsonR);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TmdbCommonResultDto<R>&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other.results, results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(results),totalPages,totalResults);

@override
String toString() {
  return 'TmdbCommonResultDto<$R>(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class $TmdbCommonResultDtoCopyWith<R,$Res>  {
  factory $TmdbCommonResultDtoCopyWith(TmdbCommonResultDto<R> value, $Res Function(TmdbCommonResultDto<R>) _then) = _$TmdbCommonResultDtoCopyWithImpl;
@useResult
$Res call({
 int page, List<R> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class _$TmdbCommonResultDtoCopyWithImpl<R,$Res>
    implements $TmdbCommonResultDtoCopyWith<R, $Res> {
  _$TmdbCommonResultDtoCopyWithImpl(this._self, this._then);

  final TmdbCommonResultDto<R> _self;
  final $Res Function(TmdbCommonResultDto<R>) _then;

/// Create a copy of TmdbCommonResultDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<R>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [TmdbCommonResultDto].
extension TmdbCommonResultDtoPatterns<R> on TmdbCommonResultDto<R> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TmdbCommonResultDto<R> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TmdbCommonResultDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TmdbCommonResultDto<R> value)  $default,){
final _that = this;
switch (_that) {
case _TmdbCommonResultDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TmdbCommonResultDto<R> value)?  $default,){
final _that = this;
switch (_that) {
case _TmdbCommonResultDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  List<R> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TmdbCommonResultDto() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  List<R> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)  $default,) {final _that = this;
switch (_that) {
case _TmdbCommonResultDto():
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  List<R> results, @JsonKey(name: 'total_pages')  int totalPages, @JsonKey(name: 'total_results')  int totalResults)?  $default,) {final _that = this;
switch (_that) {
case _TmdbCommonResultDto() when $default != null:
return $default(_that.page,_that.results,_that.totalPages,_that.totalResults);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _TmdbCommonResultDto<R> implements TmdbCommonResultDto<R> {
  const _TmdbCommonResultDto({required this.page, required final  List<R> results, @JsonKey(name: 'total_pages') required this.totalPages, @JsonKey(name: 'total_results') required this.totalResults}): _results = results;
  factory _TmdbCommonResultDto.fromJson(Map<String, dynamic> json,R Function(Object?) fromJsonR) => _$TmdbCommonResultDtoFromJson(json,fromJsonR);

@override final  int page;
 final  List<R> _results;
@override List<R> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}

@override@JsonKey(name: 'total_pages') final  int totalPages;
@override@JsonKey(name: 'total_results') final  int totalResults;

/// Create a copy of TmdbCommonResultDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TmdbCommonResultDtoCopyWith<R, _TmdbCommonResultDto<R>> get copyWith => __$TmdbCommonResultDtoCopyWithImpl<R, _TmdbCommonResultDto<R>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(R) toJsonR) {
  return _$TmdbCommonResultDtoToJson<R>(this, toJsonR);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TmdbCommonResultDto<R>&&(identical(other.page, page) || other.page == page)&&const DeepCollectionEquality().equals(other._results, _results)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages)&&(identical(other.totalResults, totalResults) || other.totalResults == totalResults));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,const DeepCollectionEquality().hash(_results),totalPages,totalResults);

@override
String toString() {
  return 'TmdbCommonResultDto<$R>(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
}


}

/// @nodoc
abstract mixin class _$TmdbCommonResultDtoCopyWith<R,$Res> implements $TmdbCommonResultDtoCopyWith<R, $Res> {
  factory _$TmdbCommonResultDtoCopyWith(_TmdbCommonResultDto<R> value, $Res Function(_TmdbCommonResultDto<R>) _then) = __$TmdbCommonResultDtoCopyWithImpl;
@override @useResult
$Res call({
 int page, List<R> results,@JsonKey(name: 'total_pages') int totalPages,@JsonKey(name: 'total_results') int totalResults
});




}
/// @nodoc
class __$TmdbCommonResultDtoCopyWithImpl<R,$Res>
    implements _$TmdbCommonResultDtoCopyWith<R, $Res> {
  __$TmdbCommonResultDtoCopyWithImpl(this._self, this._then);

  final _TmdbCommonResultDto<R> _self;
  final $Res Function(_TmdbCommonResultDto<R>) _then;

/// Create a copy of TmdbCommonResultDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? results = null,Object? totalPages = null,Object? totalResults = null,}) {
  return _then(_TmdbCommonResultDto<R>(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<R>,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,totalResults: null == totalResults ? _self.totalResults : totalResults // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
