// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'production_companies_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductionCompaniesDTO {

 int get id;@JsonKey(name: 'logo_path') String? get logoPath; String get name;
/// Create a copy of ProductionCompaniesDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductionCompaniesDTOCopyWith<ProductionCompaniesDTO> get copyWith => _$ProductionCompaniesDTOCopyWithImpl<ProductionCompaniesDTO>(this as ProductionCompaniesDTO, _$identity);

  /// Serializes this ProductionCompaniesDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductionCompaniesDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name);

@override
String toString() {
  return 'ProductionCompaniesDTO(id: $id, logoPath: $logoPath, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProductionCompaniesDTOCopyWith<$Res>  {
  factory $ProductionCompaniesDTOCopyWith(ProductionCompaniesDTO value, $Res Function(ProductionCompaniesDTO) _then) = _$ProductionCompaniesDTOCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'logo_path') String? logoPath, String name
});




}
/// @nodoc
class _$ProductionCompaniesDTOCopyWithImpl<$Res>
    implements $ProductionCompaniesDTOCopyWith<$Res> {
  _$ProductionCompaniesDTOCopyWithImpl(this._self, this._then);

  final ProductionCompaniesDTO _self;
  final $Res Function(ProductionCompaniesDTO) _then;

/// Create a copy of ProductionCompaniesDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductionCompaniesDTO].
extension ProductionCompaniesDTOPatterns on ProductionCompaniesDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductionCompaniesDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductionCompaniesDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductionCompaniesDTO value)  $default,){
final _that = this;
switch (_that) {
case _ProductionCompaniesDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductionCompaniesDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ProductionCompaniesDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'logo_path')  String? logoPath,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductionCompaniesDTO() when $default != null:
return $default(_that.id,_that.logoPath,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'logo_path')  String? logoPath,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProductionCompaniesDTO():
return $default(_that.id,_that.logoPath,_that.name);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'logo_path')  String? logoPath,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProductionCompaniesDTO() when $default != null:
return $default(_that.id,_that.logoPath,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductionCompaniesDTO implements ProductionCompaniesDTO {
   _ProductionCompaniesDTO({required this.id, @JsonKey(name: 'logo_path') required this.logoPath, required this.name});
  factory _ProductionCompaniesDTO.fromJson(Map<String, dynamic> json) => _$ProductionCompaniesDTOFromJson(json);

@override final  int id;
@override@JsonKey(name: 'logo_path') final  String? logoPath;
@override final  String name;

/// Create a copy of ProductionCompaniesDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductionCompaniesDTOCopyWith<_ProductionCompaniesDTO> get copyWith => __$ProductionCompaniesDTOCopyWithImpl<_ProductionCompaniesDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductionCompaniesDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductionCompaniesDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name);

@override
String toString() {
  return 'ProductionCompaniesDTO(id: $id, logoPath: $logoPath, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProductionCompaniesDTOCopyWith<$Res> implements $ProductionCompaniesDTOCopyWith<$Res> {
  factory _$ProductionCompaniesDTOCopyWith(_ProductionCompaniesDTO value, $Res Function(_ProductionCompaniesDTO) _then) = __$ProductionCompaniesDTOCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'logo_path') String? logoPath, String name
});




}
/// @nodoc
class __$ProductionCompaniesDTOCopyWithImpl<$Res>
    implements _$ProductionCompaniesDTOCopyWith<$Res> {
  __$ProductionCompaniesDTOCopyWithImpl(this._self, this._then);

  final _ProductionCompaniesDTO _self;
  final $Res Function(_ProductionCompaniesDTO) _then;

/// Create a copy of ProductionCompaniesDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,}) {
  return _then(_ProductionCompaniesDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
