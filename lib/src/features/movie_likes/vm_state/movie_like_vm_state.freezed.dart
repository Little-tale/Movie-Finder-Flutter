// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_like_vm_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieLikeVmState {

 List<FavoriteMovie> get movies; List<int> get allGenreIds; int get currentIdx;
/// Create a copy of MovieLikeVmState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieLikeVmStateCopyWith<MovieLikeVmState> get copyWith => _$MovieLikeVmStateCopyWithImpl<MovieLikeVmState>(this as MovieLikeVmState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieLikeVmState&&const DeepCollectionEquality().equals(other.movies, movies)&&const DeepCollectionEquality().equals(other.allGenreIds, allGenreIds)&&(identical(other.currentIdx, currentIdx) || other.currentIdx == currentIdx));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(movies),const DeepCollectionEquality().hash(allGenreIds),currentIdx);

@override
String toString() {
  return 'MovieLikeVmState(movies: $movies, allGenreIds: $allGenreIds, currentIdx: $currentIdx)';
}


}

/// @nodoc
abstract mixin class $MovieLikeVmStateCopyWith<$Res>  {
  factory $MovieLikeVmStateCopyWith(MovieLikeVmState value, $Res Function(MovieLikeVmState) _then) = _$MovieLikeVmStateCopyWithImpl;
@useResult
$Res call({
 List<FavoriteMovie> movies, List<int> allGenreIds, int currentIdx
});




}
/// @nodoc
class _$MovieLikeVmStateCopyWithImpl<$Res>
    implements $MovieLikeVmStateCopyWith<$Res> {
  _$MovieLikeVmStateCopyWithImpl(this._self, this._then);

  final MovieLikeVmState _self;
  final $Res Function(MovieLikeVmState) _then;

/// Create a copy of MovieLikeVmState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? movies = null,Object? allGenreIds = null,Object? currentIdx = null,}) {
  return _then(_self.copyWith(
movies: null == movies ? _self.movies : movies // ignore: cast_nullable_to_non_nullable
as List<FavoriteMovie>,allGenreIds: null == allGenreIds ? _self.allGenreIds : allGenreIds // ignore: cast_nullable_to_non_nullable
as List<int>,currentIdx: null == currentIdx ? _self.currentIdx : currentIdx // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieLikeVmState].
extension MovieLikeVmStatePatterns on MovieLikeVmState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieLikeVmState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieLikeVmState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieLikeVmState value)  $default,){
final _that = this;
switch (_that) {
case _MovieLikeVmState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieLikeVmState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieLikeVmState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FavoriteMovie> movies,  List<int> allGenreIds,  int currentIdx)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieLikeVmState() when $default != null:
return $default(_that.movies,_that.allGenreIds,_that.currentIdx);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FavoriteMovie> movies,  List<int> allGenreIds,  int currentIdx)  $default,) {final _that = this;
switch (_that) {
case _MovieLikeVmState():
return $default(_that.movies,_that.allGenreIds,_that.currentIdx);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FavoriteMovie> movies,  List<int> allGenreIds,  int currentIdx)?  $default,) {final _that = this;
switch (_that) {
case _MovieLikeVmState() when $default != null:
return $default(_that.movies,_that.allGenreIds,_that.currentIdx);case _:
  return null;

}
}

}

/// @nodoc


class _MovieLikeVmState implements MovieLikeVmState {
   _MovieLikeVmState({required final  List<FavoriteMovie> movies, required final  List<int> allGenreIds, required this.currentIdx}): _movies = movies,_allGenreIds = allGenreIds;
  

 final  List<FavoriteMovie> _movies;
@override List<FavoriteMovie> get movies {
  if (_movies is EqualUnmodifiableListView) return _movies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_movies);
}

 final  List<int> _allGenreIds;
@override List<int> get allGenreIds {
  if (_allGenreIds is EqualUnmodifiableListView) return _allGenreIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allGenreIds);
}

@override final  int currentIdx;

/// Create a copy of MovieLikeVmState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieLikeVmStateCopyWith<_MovieLikeVmState> get copyWith => __$MovieLikeVmStateCopyWithImpl<_MovieLikeVmState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieLikeVmState&&const DeepCollectionEquality().equals(other._movies, _movies)&&const DeepCollectionEquality().equals(other._allGenreIds, _allGenreIds)&&(identical(other.currentIdx, currentIdx) || other.currentIdx == currentIdx));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_movies),const DeepCollectionEquality().hash(_allGenreIds),currentIdx);

@override
String toString() {
  return 'MovieLikeVmState(movies: $movies, allGenreIds: $allGenreIds, currentIdx: $currentIdx)';
}


}

/// @nodoc
abstract mixin class _$MovieLikeVmStateCopyWith<$Res> implements $MovieLikeVmStateCopyWith<$Res> {
  factory _$MovieLikeVmStateCopyWith(_MovieLikeVmState value, $Res Function(_MovieLikeVmState) _then) = __$MovieLikeVmStateCopyWithImpl;
@override @useResult
$Res call({
 List<FavoriteMovie> movies, List<int> allGenreIds, int currentIdx
});




}
/// @nodoc
class __$MovieLikeVmStateCopyWithImpl<$Res>
    implements _$MovieLikeVmStateCopyWith<$Res> {
  __$MovieLikeVmStateCopyWithImpl(this._self, this._then);

  final _MovieLikeVmState _self;
  final $Res Function(_MovieLikeVmState) _then;

/// Create a copy of MovieLikeVmState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? movies = null,Object? allGenreIds = null,Object? currentIdx = null,}) {
  return _then(_MovieLikeVmState(
movies: null == movies ? _self._movies : movies // ignore: cast_nullable_to_non_nullable
as List<FavoriteMovie>,allGenreIds: null == allGenreIds ? _self._allGenreIds : allGenreIds // ignore: cast_nullable_to_non_nullable
as List<int>,currentIdx: null == currentIdx ? _self.currentIdx : currentIdx // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
