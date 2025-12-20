// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vs_movie_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieListScreenState {

 PagedState<SimpleMovieEntity> get topRatedItems; PagedState<SimpleMovieEntity> get popularItems;
/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieListScreenStateCopyWith<MovieListScreenState> get copyWith => _$MovieListScreenStateCopyWithImpl<MovieListScreenState>(this as MovieListScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieListScreenState&&(identical(other.topRatedItems, topRatedItems) || other.topRatedItems == topRatedItems)&&(identical(other.popularItems, popularItems) || other.popularItems == popularItems));
}


@override
int get hashCode => Object.hash(runtimeType,topRatedItems,popularItems);

@override
String toString() {
  return 'MovieListScreenState(topRatedItems: $topRatedItems, popularItems: $popularItems)';
}


}

/// @nodoc
abstract mixin class $MovieListScreenStateCopyWith<$Res>  {
  factory $MovieListScreenStateCopyWith(MovieListScreenState value, $Res Function(MovieListScreenState) _then) = _$MovieListScreenStateCopyWithImpl;
@useResult
$Res call({
 PagedState<SimpleMovieEntity> topRatedItems, PagedState<SimpleMovieEntity> popularItems
});


$PagedStateCopyWith<SimpleMovieEntity, $Res> get topRatedItems;$PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems;

}
/// @nodoc
class _$MovieListScreenStateCopyWithImpl<$Res>
    implements $MovieListScreenStateCopyWith<$Res> {
  _$MovieListScreenStateCopyWithImpl(this._self, this._then);

  final MovieListScreenState _self;
  final $Res Function(MovieListScreenState) _then;

/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? topRatedItems = null,Object? popularItems = null,}) {
  return _then(_self.copyWith(
topRatedItems: null == topRatedItems ? _self.topRatedItems : topRatedItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,popularItems: null == popularItems ? _self.popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,
  ));
}
/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get topRatedItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.topRatedItems, (value) {
    return _then(_self.copyWith(topRatedItems: value));
  });
}/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.popularItems, (value) {
    return _then(_self.copyWith(popularItems: value));
  });
}
}


/// Adds pattern-matching-related methods to [MovieListScreenState].
extension MovieListScreenStatePatterns on MovieListScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieListScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieListScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieListScreenState value)  $default,){
final _that = this;
switch (_that) {
case _MovieListScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieListScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieListScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagedState<SimpleMovieEntity> topRatedItems,  PagedState<SimpleMovieEntity> popularItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieListScreenState() when $default != null:
return $default(_that.topRatedItems,_that.popularItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagedState<SimpleMovieEntity> topRatedItems,  PagedState<SimpleMovieEntity> popularItems)  $default,) {final _that = this;
switch (_that) {
case _MovieListScreenState():
return $default(_that.topRatedItems,_that.popularItems);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagedState<SimpleMovieEntity> topRatedItems,  PagedState<SimpleMovieEntity> popularItems)?  $default,) {final _that = this;
switch (_that) {
case _MovieListScreenState() when $default != null:
return $default(_that.topRatedItems,_that.popularItems);case _:
  return null;

}
}

}

/// @nodoc


class _MovieListScreenState implements MovieListScreenState {
   _MovieListScreenState({required this.topRatedItems, required this.popularItems});
  

@override final  PagedState<SimpleMovieEntity> topRatedItems;
@override final  PagedState<SimpleMovieEntity> popularItems;

/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieListScreenStateCopyWith<_MovieListScreenState> get copyWith => __$MovieListScreenStateCopyWithImpl<_MovieListScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieListScreenState&&(identical(other.topRatedItems, topRatedItems) || other.topRatedItems == topRatedItems)&&(identical(other.popularItems, popularItems) || other.popularItems == popularItems));
}


@override
int get hashCode => Object.hash(runtimeType,topRatedItems,popularItems);

@override
String toString() {
  return 'MovieListScreenState(topRatedItems: $topRatedItems, popularItems: $popularItems)';
}


}

/// @nodoc
abstract mixin class _$MovieListScreenStateCopyWith<$Res> implements $MovieListScreenStateCopyWith<$Res> {
  factory _$MovieListScreenStateCopyWith(_MovieListScreenState value, $Res Function(_MovieListScreenState) _then) = __$MovieListScreenStateCopyWithImpl;
@override @useResult
$Res call({
 PagedState<SimpleMovieEntity> topRatedItems, PagedState<SimpleMovieEntity> popularItems
});


@override $PagedStateCopyWith<SimpleMovieEntity, $Res> get topRatedItems;@override $PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems;

}
/// @nodoc
class __$MovieListScreenStateCopyWithImpl<$Res>
    implements _$MovieListScreenStateCopyWith<$Res> {
  __$MovieListScreenStateCopyWithImpl(this._self, this._then);

  final _MovieListScreenState _self;
  final $Res Function(_MovieListScreenState) _then;

/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? topRatedItems = null,Object? popularItems = null,}) {
  return _then(_MovieListScreenState(
topRatedItems: null == topRatedItems ? _self.topRatedItems : topRatedItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,popularItems: null == popularItems ? _self.popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,
  ));
}

/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get topRatedItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.topRatedItems, (value) {
    return _then(_self.copyWith(topRatedItems: value));
  });
}/// Create a copy of MovieListScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.popularItems, (value) {
    return _then(_self.copyWith(popularItems: value));
  });
}
}

// dart format on
