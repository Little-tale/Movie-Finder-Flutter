// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_crew_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MovieCrewDTO {

 bool get adult; int get gender; int get id; String get knownForDepartment; String get name; String get originalName; double get popularity; String? get profilePath; String get creditId; String get department; String get job;
/// Create a copy of MovieCrewDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCrewDTOCopyWith<MovieCrewDTO> get copyWith => _$MovieCrewDTOCopyWithImpl<MovieCrewDTO>(this as MovieCrewDTO, _$identity);

  /// Serializes this MovieCrewDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieCrewDTO&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.department, department) || other.department == department)&&(identical(other.job, job) || other.job == job));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownForDepartment,name,originalName,popularity,profilePath,creditId,department,job);

@override
String toString() {
  return 'MovieCrewDTO(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, creditId: $creditId, department: $department, job: $job)';
}


}

/// @nodoc
abstract mixin class $MovieCrewDTOCopyWith<$Res>  {
  factory $MovieCrewDTOCopyWith(MovieCrewDTO value, $Res Function(MovieCrewDTO) _then) = _$MovieCrewDTOCopyWithImpl;
@useResult
$Res call({
 bool adult, int gender, int id, String knownForDepartment, String name, String originalName, double popularity, String? profilePath, String creditId, String department, String job
});




}
/// @nodoc
class _$MovieCrewDTOCopyWithImpl<$Res>
    implements $MovieCrewDTOCopyWith<$Res> {
  _$MovieCrewDTOCopyWithImpl(this._self, this._then);

  final MovieCrewDTO _self;
  final $Res Function(MovieCrewDTO) _then;

/// Create a copy of MovieCrewDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? adult = null,Object? gender = null,Object? id = null,Object? knownForDepartment = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? creditId = null,Object? department = null,Object? job = null,}) {
  return _then(_self.copyWith(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,knownForDepartment: null == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieCrewDTO].
extension MovieCrewDTOPatterns on MovieCrewDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieCrewDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieCrewDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieCrewDTO value)  $default,){
final _that = this;
switch (_that) {
case _MovieCrewDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieCrewDTO value)?  $default,){
final _that = this;
switch (_that) {
case _MovieCrewDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool adult,  int gender,  int id,  String knownForDepartment,  String name,  String originalName,  double popularity,  String? profilePath,  String creditId,  String department,  String job)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieCrewDTO() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.job);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool adult,  int gender,  int id,  String knownForDepartment,  String name,  String originalName,  double popularity,  String? profilePath,  String creditId,  String department,  String job)  $default,) {final _that = this;
switch (_that) {
case _MovieCrewDTO():
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.job);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool adult,  int gender,  int id,  String knownForDepartment,  String name,  String originalName,  double popularity,  String? profilePath,  String creditId,  String department,  String job)?  $default,) {final _that = this;
switch (_that) {
case _MovieCrewDTO() when $default != null:
return $default(_that.adult,_that.gender,_that.id,_that.knownForDepartment,_that.name,_that.originalName,_that.popularity,_that.profilePath,_that.creditId,_that.department,_that.job);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MovieCrewDTO implements MovieCrewDTO {
  const _MovieCrewDTO({required this.adult, required this.gender, required this.id, required this.knownForDepartment, required this.name, required this.originalName, required this.popularity, this.profilePath, required this.creditId, required this.department, required this.job});
  factory _MovieCrewDTO.fromJson(Map<String, dynamic> json) => _$MovieCrewDTOFromJson(json);

@override final  bool adult;
@override final  int gender;
@override final  int id;
@override final  String knownForDepartment;
@override final  String name;
@override final  String originalName;
@override final  double popularity;
@override final  String? profilePath;
@override final  String creditId;
@override final  String department;
@override final  String job;

/// Create a copy of MovieCrewDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCrewDTOCopyWith<_MovieCrewDTO> get copyWith => __$MovieCrewDTOCopyWithImpl<_MovieCrewDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieCrewDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieCrewDTO&&(identical(other.adult, adult) || other.adult == adult)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.id, id) || other.id == id)&&(identical(other.knownForDepartment, knownForDepartment) || other.knownForDepartment == knownForDepartment)&&(identical(other.name, name) || other.name == name)&&(identical(other.originalName, originalName) || other.originalName == originalName)&&(identical(other.popularity, popularity) || other.popularity == popularity)&&(identical(other.profilePath, profilePath) || other.profilePath == profilePath)&&(identical(other.creditId, creditId) || other.creditId == creditId)&&(identical(other.department, department) || other.department == department)&&(identical(other.job, job) || other.job == job));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,adult,gender,id,knownForDepartment,name,originalName,popularity,profilePath,creditId,department,job);

@override
String toString() {
  return 'MovieCrewDTO(adult: $adult, gender: $gender, id: $id, knownForDepartment: $knownForDepartment, name: $name, originalName: $originalName, popularity: $popularity, profilePath: $profilePath, creditId: $creditId, department: $department, job: $job)';
}


}

/// @nodoc
abstract mixin class _$MovieCrewDTOCopyWith<$Res> implements $MovieCrewDTOCopyWith<$Res> {
  factory _$MovieCrewDTOCopyWith(_MovieCrewDTO value, $Res Function(_MovieCrewDTO) _then) = __$MovieCrewDTOCopyWithImpl;
@override @useResult
$Res call({
 bool adult, int gender, int id, String knownForDepartment, String name, String originalName, double popularity, String? profilePath, String creditId, String department, String job
});




}
/// @nodoc
class __$MovieCrewDTOCopyWithImpl<$Res>
    implements _$MovieCrewDTOCopyWith<$Res> {
  __$MovieCrewDTOCopyWithImpl(this._self, this._then);

  final _MovieCrewDTO _self;
  final $Res Function(_MovieCrewDTO) _then;

/// Create a copy of MovieCrewDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? adult = null,Object? gender = null,Object? id = null,Object? knownForDepartment = null,Object? name = null,Object? originalName = null,Object? popularity = null,Object? profilePath = freezed,Object? creditId = null,Object? department = null,Object? job = null,}) {
  return _then(_MovieCrewDTO(
adult: null == adult ? _self.adult : adult // ignore: cast_nullable_to_non_nullable
as bool,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as int,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,knownForDepartment: null == knownForDepartment ? _self.knownForDepartment : knownForDepartment // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originalName: null == originalName ? _self.originalName : originalName // ignore: cast_nullable_to_non_nullable
as String,popularity: null == popularity ? _self.popularity : popularity // ignore: cast_nullable_to_non_nullable
as double,profilePath: freezed == profilePath ? _self.profilePath : profilePath // ignore: cast_nullable_to_non_nullable
as String?,creditId: null == creditId ? _self.creditId : creditId // ignore: cast_nullable_to_non_nullable
as String,department: null == department ? _self.department : department // ignore: cast_nullable_to_non_nullable
as String,job: null == job ? _self.job : job // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
