// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_cast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieCastDTO {

 bool get adult; int get gender; int get id; String get knownForDepartment; String get name; String get originalName; double get popularity; String? get profilePath; int get castId; String get character; String get creditId; int get order;
/// Create a copy of MovieCastDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCastDTOCopyWith<MovieCastDTO> get copyWith => _$MovieCastDTOCopyWithImpl<MovieCastDTO>(this as MovieCastDTO, _$identity);

  /// Serializes this MovieCastDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieCastDTO&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.castId, castId) || other.castId == castId)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownForDepartment,name,originalName,popularity,profilePath,castId,character,creditId,order);

@override
String toString() {
  return 'MovieCastDTO(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class $MovieCastDTOCopyWith<$Res>  {
  factory $MovieCastDTOCopyWith(MovieCastDTO value, $Res Function(MovieCastDTO) _then) = _$MovieCastDTOCopyWithImpl;
@useResult
$Res call({
 bool adult, int gender, int id, String knownForDepartment, String name, String originalName, double popularity, String? profilePath, int castId, String character, String creditId, int order
});




}
/// @nodoc
class _$MovieCastDTOCopyWithImpl<$Res>
    implements $MovieCastDTOCopyWith<$Res> {
  _$MovieCastDTOCopyWithImpl(this._self, this._then);

  final MovieCastDTO _self;
  final $Res Function(MovieCastDTO) _then;

/// Create a copy of MovieCastDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? gender = null,Object? id = null,Object? knownForDepartment = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? castId = null,Object? character = null,Object? creditId = null,Object? order = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,knownForDepartment: null == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,castId: null == castId ? _self.castId : castId // ignore: cast_nullable_to_non_nullable
as int,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieCastDTO].
extension MovieCastDTOPatterns on MovieCastDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieCastDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieCastDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieCastDTO value)  $default,){
final _that = this;
switch (_that) {
case _MovieCastDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieCastDTO value)?  $default,){
final _that = this;
switch (_that) {
case _MovieCastDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult,  int gender,  int id,  String knownForDepartment,  String name,  String originalName,  double popularity,  String? profilePath,  int castId,  String character,  String creditId,  int order)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieCastDTO() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult,  int gender,  int id,  String knownForDepartment,  String name,  String originalName,  double popularity,  String? profilePath,  int castId,  String character,  String creditId,  int order)  $default,) {final _that = this;
switch (_that) {
case _MovieCastDTO():
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult,  int gender,  int id,  String knownForDepartment,  String name,  String originalName,  double popularity,  String? profilePath,  int castId,  String character,  String creditId,  int order)?  $default,) {final _that = this;
switch (_that) {
case _MovieCastDTO() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.castId,_that.character,_that.creditId,_that.order);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MovieCastDTO implements MovieCastDTO {
  const _MovieCastDTO({required this.adult, required this.gender, required this.id, required this.knownForDepartment, required this.name, required this.originalName, required this.popularity, this.profilePath, required this.castId, required this.character, required this.creditId, required this.order});
  factory _MovieCastDTO.fromJson(Map<String, dynamic> json) => _$MovieCastDTOFromJson(json);

@override final  bool adult;
@override final  int gender;
@override final  int id;
@override final  String knownForDepartment;
@override final  String name;
@override final  String originalName;
@override final  double popularity;
@override final  String? profilePath;
@override final  int castId;
@override final  String character;
@override final  String creditId;
@override final  int order;

/// Create a copy of MovieCastDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCastDTOCopyWith<_MovieCastDTO> get copyWith => __$MovieCastDTOCopyWithImpl<_MovieCastDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieCastDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieCastDTO&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.castId, castId) || other.castId == castId)&&(identical(other.character, character) || other.character == character)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.order, order) || other.order == order));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownForDepartment,name,originalName,popularity,profilePath,castId,character,creditId,order);

@override
String toString() {
  return 'MovieCastDTO(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, castId: $castId, character: $character, creditId: $creditId, order: $order)';
}


}

/// @nodoc
abstract mixin class _$MovieCastDTOCopyWith<$Res> implements $MovieCastDTOCopyWith<$Res> {
  factory _$MovieCastDTOCopyWith(_MovieCastDTO value, $Res Function(_MovieCastDTO) _then) = __$MovieCastDTOCopyWithImpl;
@override @useResult
$Res call({
 bool adult, int gender, int id, String knownForDepartment, String name, String originalName, double popularity, String? profilePath, int castId, String character, String creditId, int order
});




}
/// @nodoc
class __$MovieCastDTOCopyWithImpl<$Res>
    implements _$MovieCastDTOCopyWith<$Res> {
  __$MovieCastDTOCopyWithImpl(this._self, this._then);

  final _MovieCastDTO _self;
  final $Res Function(_MovieCastDTO) _then;

/// Create a copy of MovieCastDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? gender = null,Object? id = null,Object? knownForDepartment = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? castId = null,Object? character = null,Object? creditId = null,Object? order = null,}) {
  return _then(_MovieCastDTO(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,knownForDepartment: null == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,castId: null == castId ? _self.castId : castId // ignore: cast_nullable_to_non_nullable
as int,character: null == character ? _self.character : character // ignore: cast_nullable_to_non_nullable
as String,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,order: null == order ? _self.order : order // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
