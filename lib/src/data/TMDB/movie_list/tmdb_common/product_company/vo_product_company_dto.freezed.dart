// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vo_product_company_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductCompanyDto {

 int get id;@JsonKey(name: 'logo_path') String? get logoPath; String get name;@JsonKey(name: 'origin_country') String get originCountry;
/// Create a copy of ProductCompanyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompanyDtoCopyWith<ProductCompanyDto> get copyWith => _$ProductCompanyDtoCopyWithImpl<ProductCompanyDto>(this as ProductCompanyDto, _$identity);

  /// Serializes this ProductCompanyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompanyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductCompanyDto(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $ProductCompanyDtoCopyWith<$Res>  {
  factory $ProductCompanyDtoCopyWith(ProductCompanyDto value, $Res Function(ProductCompanyDto) _then) = _$ProductCompanyDtoCopyWithImpl;
@useResult
$Res call({
 int id,@JsonKey(name: 'logo_path') String? logoPath, String name,@JsonKey(name: 'origin_country') String originCountry
});




}
/// @nodoc
class _$ProductCompanyDtoCopyWithImpl<$Res>
    implements $ProductCompanyDtoCopyWith<$Res> {
  _$ProductCompanyDtoCopyWithImpl(this._self, this._then);

  final ProductCompanyDto _self;
  final $Res Function(ProductCompanyDto) _then;

/// Create a copy of ProductCompanyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductCompanyDto].
extension ProductCompanyDtoPatterns on ProductCompanyDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompanyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompanyDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompanyDto value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompanyDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompanyDto value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompanyDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'logo_path')  String? logoPath,  String name, @JsonKey(name: 'origin_country')  String originCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompanyDto() when $default != null:
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id, @JsonKey(name: 'logo_path')  String? logoPath,  String name, @JsonKey(name: 'origin_country')  String originCountry)  $default,) {final _that = this;
switch (_that) {
case _ProductCompanyDto():
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id, @JsonKey(name: 'logo_path')  String? logoPath,  String name, @JsonKey(name: 'origin_country')  String originCountry)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompanyDto() when $default != null:
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProductCompanyDto implements ProductCompanyDto {
   _ProductCompanyDto({required this.id, @JsonKey(name: 'logo_path') this.logoPath, required this.name, @JsonKey(name: 'origin_country') required this.originCountry});
  factory _ProductCompanyDto.fromJson(Map<String, dynamic> json) => _$ProductCompanyDtoFromJson(json);

@override final  int id;
@override@JsonKey(name: 'logo_path') final  String? logoPath;
@override final  String name;
@override@JsonKey(name: 'origin_country') final  String originCountry;

/// Create a copy of ProductCompanyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompanyDtoCopyWith<_ProductCompanyDto> get copyWith => __$ProductCompanyDtoCopyWithImpl<_ProductCompanyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductCompanyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompanyDto&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductCompanyDto(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$ProductCompanyDtoCopyWith<$Res> implements $ProductCompanyDtoCopyWith<$Res> {
  factory _$ProductCompanyDtoCopyWith(_ProductCompanyDto value, $Res Function(_ProductCompanyDto) _then) = __$ProductCompanyDtoCopyWithImpl;
@override @useResult
$Res call({
 int id,@JsonKey(name: 'logo_path') String? logoPath, String name,@JsonKey(name: 'origin_country') String originCountry
});




}
/// @nodoc
class __$ProductCompanyDtoCopyWithImpl<$Res>
    implements _$ProductCompanyDtoCopyWith<$Res> {
  __$ProductCompanyDtoCopyWithImpl(this._self, this._then);

  final _ProductCompanyDto _self;
  final $Res Function(_ProductCompanyDto) _then;

/// Create a copy of ProductCompanyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = null,}) {
  return _then(_ProductCompanyDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
