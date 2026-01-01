// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchMovieScreenState {

 PagedState<SimpleMovieEntity> get popularItems; PagedState<SimpleMovieEntity> get recommendItems; PagedState<SimpleMovieEntity> get searchResultsItems;
/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMovieScreenStateCopyWith<SearchMovieScreenState> get copyWith => _$SearchMovieScreenStateCopyWithImpl<SearchMovieScreenState>(this as SearchMovieScreenState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMovieScreenState&&(identical(other.popularItems, popularItems) || other.popularItems == popularItems)&&(identical(other.recommendItems, recommendItems) || other.recommendItems == recommendItems)&&(identical(other.searchResultsItems, searchResultsItems) || other.searchResultsItems == searchResultsItems));
}


@override
int get hashCode => Object.hash(runtimeType,popularItems,recommendItems,searchResultsItems);

@override
String toString() {
  return 'SearchMovieScreenState(popularItems: $popularItems, recommendItems: $recommendItems, searchResultsItems: $searchResultsItems)';
}


}

/// @nodoc
abstract mixin class $SearchMovieScreenStateCopyWith<$Res>  {
  factory $SearchMovieScreenStateCopyWith(SearchMovieScreenState value, $Res Function(SearchMovieScreenState) _then) = _$SearchMovieScreenStateCopyWithImpl;
@useResult
$Res call({
 PagedState<SimpleMovieEntity> popularItems, PagedState<SimpleMovieEntity> recommendItems, PagedState<SimpleMovieEntity> searchResultsItems
});


$PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems;$PagedStateCopyWith<SimpleMovieEntity, $Res> get recommendItems;$PagedStateCopyWith<SimpleMovieEntity, $Res> get searchResultsItems;

}
/// @nodoc
class _$SearchMovieScreenStateCopyWithImpl<$Res>
    implements $SearchMovieScreenStateCopyWith<$Res> {
  _$SearchMovieScreenStateCopyWithImpl(this._self, this._then);

  final SearchMovieScreenState _self;
  final $Res Function(SearchMovieScreenState) _then;

/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? popularItems = null,Object? recommendItems = null,Object? searchResultsItems = null,}) {
  return _then(_self.copyWith(
popularItems: null == popularItems ? _self.popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,recommendItems: null == recommendItems ? _self.recommendItems : recommendItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,searchResultsItems: null == searchResultsItems ? _self.searchResultsItems : searchResultsItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,
  ));
}
/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.popularItems, (value) {
    return _then(_self.copyWith(popularItems: value));
  });
}/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get recommendItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.recommendItems, (value) {
    return _then(_self.copyWith(recommendItems: value));
  });
}/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get searchResultsItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.searchResultsItems, (value) {
    return _then(_self.copyWith(searchResultsItems: value));
  });
}
}


/// Adds pattern-matching-related methods to [SearchMovieScreenState].
extension SearchMovieScreenStatePatterns on SearchMovieScreenState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchMovieScreenState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchMovieScreenState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchMovieScreenState value)  $default,){
final _that = this;
switch (_that) {
case _SearchMovieScreenState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchMovieScreenState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchMovieScreenState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PagedState<SimpleMovieEntity> popularItems,  PagedState<SimpleMovieEntity> recommendItems,  PagedState<SimpleMovieEntity> searchResultsItems)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchMovieScreenState() when $default != null:
return $default(_that.popularItems,_that.recommendItems,_that.searchResultsItems);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PagedState<SimpleMovieEntity> popularItems,  PagedState<SimpleMovieEntity> recommendItems,  PagedState<SimpleMovieEntity> searchResultsItems)  $default,) {final _that = this;
switch (_that) {
case _SearchMovieScreenState():
return $default(_that.popularItems,_that.recommendItems,_that.searchResultsItems);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PagedState<SimpleMovieEntity> popularItems,  PagedState<SimpleMovieEntity> recommendItems,  PagedState<SimpleMovieEntity> searchResultsItems)?  $default,) {final _that = this;
switch (_that) {
case _SearchMovieScreenState() when $default != null:
return $default(_that.popularItems,_that.recommendItems,_that.searchResultsItems);case _:
  return null;

}
}

}

/// @nodoc


class _SearchMovieScreenState implements SearchMovieScreenState {
   _SearchMovieScreenState({required this.popularItems, required this.recommendItems, required this.searchResultsItems});
  

@override final  PagedState<SimpleMovieEntity> popularItems;
@override final  PagedState<SimpleMovieEntity> recommendItems;
@override final  PagedState<SimpleMovieEntity> searchResultsItems;

/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchMovieScreenStateCopyWith<_SearchMovieScreenState> get copyWith => __$SearchMovieScreenStateCopyWithImpl<_SearchMovieScreenState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchMovieScreenState&&(identical(other.popularItems, popularItems) || other.popularItems == popularItems)&&(identical(other.recommendItems, recommendItems) || other.recommendItems == recommendItems)&&(identical(other.searchResultsItems, searchResultsItems) || other.searchResultsItems == searchResultsItems));
}


@override
int get hashCode => Object.hash(runtimeType,popularItems,recommendItems,searchResultsItems);

@override
String toString() {
  return 'SearchMovieScreenState(popularItems: $popularItems, recommendItems: $recommendItems, searchResultsItems: $searchResultsItems)';
}


}

/// @nodoc
abstract mixin class _$SearchMovieScreenStateCopyWith<$Res> implements $SearchMovieScreenStateCopyWith<$Res> {
  factory _$SearchMovieScreenStateCopyWith(_SearchMovieScreenState value, $Res Function(_SearchMovieScreenState) _then) = __$SearchMovieScreenStateCopyWithImpl;
@override @useResult
$Res call({
 PagedState<SimpleMovieEntity> popularItems, PagedState<SimpleMovieEntity> recommendItems, PagedState<SimpleMovieEntity> searchResultsItems
});


@override $PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems;@override $PagedStateCopyWith<SimpleMovieEntity, $Res> get recommendItems;@override $PagedStateCopyWith<SimpleMovieEntity, $Res> get searchResultsItems;

}
/// @nodoc
class __$SearchMovieScreenStateCopyWithImpl<$Res>
    implements _$SearchMovieScreenStateCopyWith<$Res> {
  __$SearchMovieScreenStateCopyWithImpl(this._self, this._then);

  final _SearchMovieScreenState _self;
  final $Res Function(_SearchMovieScreenState) _then;

/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? popularItems = null,Object? recommendItems = null,Object? searchResultsItems = null,}) {
  return _then(_SearchMovieScreenState(
popularItems: null == popularItems ? _self.popularItems : popularItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,recommendItems: null == recommendItems ? _self.recommendItems : recommendItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,searchResultsItems: null == searchResultsItems ? _self.searchResultsItems : searchResultsItems // ignore: cast_nullable_to_non_nullable
as PagedState<SimpleMovieEntity>,
  ));
}

/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get popularItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.popularItems, (value) {
    return _then(_self.copyWith(popularItems: value));
  });
}/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get recommendItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.recommendItems, (value) {
    return _then(_self.copyWith(recommendItems: value));
  });
}/// Create a copy of SearchMovieScreenState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PagedStateCopyWith<SimpleMovieEntity, $Res> get searchResultsItems {
  
  return $PagedStateCopyWith<SimpleMovieEntity, $Res>(_self.searchResultsItems, (value) {
    return _then(_self.copyWith(searchResultsItems: value));
  });
}
}

// dart format on
