// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MovieDetailState {

 MovieDetailEntity get detail; TmdbCreditsEntity get credits; List<MovieVideoEntity> get videos; bool get isFavorite; int get selectedTab; bool get videoLoad;
/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieDetailStateCopyWith<MovieDetailState> get copyWith => _$MovieDetailStateCopyWithImpl<MovieDetailState>(this as MovieDetailState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieDetailState&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.credits, credits) || other.credits == credits)&&const DeepCollectionEquality().equals(other.videos, videos)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.videoLoad, videoLoad) || other.videoLoad == videoLoad));
}


@override
int get hashCode => Object.hash(runtimeType,detail,credits,const DeepCollectionEquality().hash(videos),isFavorite,selectedTab,videoLoad);

@override
String toString() {
  return 'MovieDetailState(detail: $detail, credits: $credits, videos: $videos, isFavorite: $isFavorite, selectedTab: $selectedTab, videoLoad: $videoLoad)';
}


}

/// @nodoc
abstract mixin class $MovieDetailStateCopyWith<$Res>  {
  factory $MovieDetailStateCopyWith(MovieDetailState value, $Res Function(MovieDetailState) _then) = _$MovieDetailStateCopyWithImpl;
@useResult
$Res call({
 MovieDetailEntity detail, TmdbCreditsEntity credits, List<MovieVideoEntity> videos, bool isFavorite, int selectedTab, bool videoLoad
});


$MovieDetailEntityCopyWith<$Res> get detail;$TmdbCreditsEntityCopyWith<$Res> get credits;

}
/// @nodoc
class _$MovieDetailStateCopyWithImpl<$Res>
    implements $MovieDetailStateCopyWith<$Res> {
  _$MovieDetailStateCopyWithImpl(this._self, this._then);

  final MovieDetailState _self;
  final $Res Function(MovieDetailState) _then;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? detail = null,Object? credits = null,Object? videos = null,Object? isFavorite = null,Object? selectedTab = null,Object? videoLoad = null,}) {
  return _then(_self.copyWith(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MovieDetailEntity,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as TmdbCreditsEntity,videos: null == videos ? _self.videos : videos // ignore: cast_nullable_to_non_nullable
as List<MovieVideoEntity>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,videoLoad: null == videoLoad ? _self.videoLoad : videoLoad // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailEntityCopyWith<$Res> get detail {
  
  return $MovieDetailEntityCopyWith<$Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TmdbCreditsEntityCopyWith<$Res> get credits {
  
  return $TmdbCreditsEntityCopyWith<$Res>(_self.credits, (value) {
    return _then(_self.copyWith(credits: value));
  });
}
}


/// Adds pattern-matching-related methods to [MovieDetailState].
extension MovieDetailStatePatterns on MovieDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieDetailState value)  $default,){
final _that = this;
switch (_that) {
case _MovieDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MovieDetailEntity detail,  TmdbCreditsEntity credits,  List<MovieVideoEntity> videos,  bool isFavorite,  int selectedTab,  bool videoLoad)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
return $default(_that.detail,_that.credits,_that.videos,_that.isFavorite,_that.selectedTab,_that.videoLoad);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MovieDetailEntity detail,  TmdbCreditsEntity credits,  List<MovieVideoEntity> videos,  bool isFavorite,  int selectedTab,  bool videoLoad)  $default,) {final _that = this;
switch (_that) {
case _MovieDetailState():
return $default(_that.detail,_that.credits,_that.videos,_that.isFavorite,_that.selectedTab,_that.videoLoad);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MovieDetailEntity detail,  TmdbCreditsEntity credits,  List<MovieVideoEntity> videos,  bool isFavorite,  int selectedTab,  bool videoLoad)?  $default,) {final _that = this;
switch (_that) {
case _MovieDetailState() when $default != null:
return $default(_that.detail,_that.credits,_that.videos,_that.isFavorite,_that.selectedTab,_that.videoLoad);case _:
  return null;

}
}

}

/// @nodoc


class _MovieDetailState implements MovieDetailState {
  const _MovieDetailState({required this.detail, required this.credits, required final  List<MovieVideoEntity> videos, this.isFavorite = false, this.selectedTab = 0, this.videoLoad = false}): _videos = videos;
  

@override final  MovieDetailEntity detail;
@override final  TmdbCreditsEntity credits;
 final  List<MovieVideoEntity> _videos;
@override List<MovieVideoEntity> get videos {
  if (_videos is EqualUnmodifiableListView) return _videos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_videos);
}

@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  int selectedTab;
@override@JsonKey() final  bool videoLoad;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieDetailStateCopyWith<_MovieDetailState> get copyWith => __$MovieDetailStateCopyWithImpl<_MovieDetailState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieDetailState&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.credits, credits) || other.credits == credits)&&const DeepCollectionEquality().equals(other._videos, _videos)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.selectedTab, selectedTab) || other.selectedTab == selectedTab)&&(identical(other.videoLoad, videoLoad) || other.videoLoad == videoLoad));
}


@override
int get hashCode => Object.hash(runtimeType,detail,credits,const DeepCollectionEquality().hash(_videos),isFavorite,selectedTab,videoLoad);

@override
String toString() {
  return 'MovieDetailState(detail: $detail, credits: $credits, videos: $videos, isFavorite: $isFavorite, selectedTab: $selectedTab, videoLoad: $videoLoad)';
}


}

/// @nodoc
abstract mixin class _$MovieDetailStateCopyWith<$Res> implements $MovieDetailStateCopyWith<$Res> {
  factory _$MovieDetailStateCopyWith(_MovieDetailState value, $Res Function(_MovieDetailState) _then) = __$MovieDetailStateCopyWithImpl;
@override @useResult
$Res call({
 MovieDetailEntity detail, TmdbCreditsEntity credits, List<MovieVideoEntity> videos, bool isFavorite, int selectedTab, bool videoLoad
});


@override $MovieDetailEntityCopyWith<$Res> get detail;@override $TmdbCreditsEntityCopyWith<$Res> get credits;

}
/// @nodoc
class __$MovieDetailStateCopyWithImpl<$Res>
    implements _$MovieDetailStateCopyWith<$Res> {
  __$MovieDetailStateCopyWithImpl(this._self, this._then);

  final _MovieDetailState _self;
  final $Res Function(_MovieDetailState) _then;

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? detail = null,Object? credits = null,Object? videos = null,Object? isFavorite = null,Object? selectedTab = null,Object? videoLoad = null,}) {
  return _then(_MovieDetailState(
detail: null == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as MovieDetailEntity,credits: null == credits ? _self.credits : credits // ignore: cast_nullable_to_non_nullable
as TmdbCreditsEntity,videos: null == videos ? _self._videos : videos // ignore: cast_nullable_to_non_nullable
as List<MovieVideoEntity>,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,selectedTab: null == selectedTab ? _self.selectedTab : selectedTab // ignore: cast_nullable_to_non_nullable
as int,videoLoad: null == videoLoad ? _self.videoLoad : videoLoad // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MovieDetailEntityCopyWith<$Res> get detail {
  
  return $MovieDetailEntityCopyWith<$Res>(_self.detail, (value) {
    return _then(_self.copyWith(detail: value));
  });
}/// Create a copy of MovieDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TmdbCreditsEntityCopyWith<$Res> get credits {
  
  return $TmdbCreditsEntityCopyWith<$Res>(_self.credits, (value) {
    return _then(_self.copyWith(credits: value));
  });
}
}

// dart format on
