// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'e_product_company_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductCompanyEntity {

 int get id; String? get logoPath; String get name; String get originCountry;
/// Create a copy of ProductCompanyEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductCompanyEntityCopyWith<ProductCompanyEntity> get copyWith => _$ProductCompanyEntityCopyWithImpl<ProductCompanyEntity>(this as ProductCompanyEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductCompanyEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}


@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductCompanyEntity(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class $ProductCompanyEntityCopyWith<$Res>  {
  factory $ProductCompanyEntityCopyWith(ProductCompanyEntity value, $Res Function(ProductCompanyEntity) _then) = _$ProductCompanyEntityCopyWithImpl;
@useResult
$Res call({
 int id, String? logoPath, String name, String originCountry
});




}
/// @nodoc
class _$ProductCompanyEntityCopyWithImpl<$Res>
    implements $ProductCompanyEntityCopyWith<$Res> {
  _$ProductCompanyEntityCopyWithImpl(this._self, this._then);

  final ProductCompanyEntity _self;
  final $Res Function(ProductCompanyEntity) _then;

/// Create a copy of ProductCompanyEntity
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


/// Adds pattern-matching-related methods to [ProductCompanyEntity].
extension ProductCompanyEntityPatterns on ProductCompanyEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductCompanyEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductCompanyEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductCompanyEntity value)  $default,){
final _that = this;
switch (_that) {
case _ProductCompanyEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductCompanyEntity value)?  $default,){
final _that = this;
switch (_that) {
case _ProductCompanyEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? logoPath,  String name,  String originCountry)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductCompanyEntity() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? logoPath,  String name,  String originCountry)  $default,) {final _that = this;
switch (_that) {
case _ProductCompanyEntity():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? logoPath,  String name,  String originCountry)?  $default,) {final _that = this;
switch (_that) {
case _ProductCompanyEntity() when $default != null:
return $default(_that.id,_that.logoPath,_that.name,_that.originCountry);case _:
  return null;

}
}

}

/// @nodoc


class _ProductCompanyEntity implements ProductCompanyEntity {
   _ProductCompanyEntity({required this.id, this.logoPath, required this.name, required this.originCountry});
  

@override final  int id;
@override final  String? logoPath;
@override final  String name;
@override final  String originCountry;

/// Create a copy of ProductCompanyEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductCompanyEntityCopyWith<_ProductCompanyEntity> get copyWith => __$ProductCompanyEntityCopyWithImpl<_ProductCompanyEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductCompanyEntity&&(identical(other.id, id) || other.id == id)&&(identical(other.logoPath, logoPath) || other.logoPath == logoPath)&&(identical(other.name, name) || other.name == name)&&(identical(other.originCountry, originCountry) || other.originCountry == originCountry));
}


@override
int get hashCode => Object.hash(runtimeType,id,logoPath,name,originCountry);

@override
String toString() {
  return 'ProductCompanyEntity(id: $id, logoPath: $logoPath, name: $name, originCountry: $originCountry)';
}


}

/// @nodoc
abstract mixin class _$ProductCompanyEntityCopyWith<$Res> implements $ProductCompanyEntityCopyWith<$Res> {
  factory _$ProductCompanyEntityCopyWith(_ProductCompanyEntity value, $Res Function(_ProductCompanyEntity) _then) = __$ProductCompanyEntityCopyWithImpl;
@override @useResult
$Res call({
 int id, String? logoPath, String name, String originCountry
});




}
/// @nodoc
class __$ProductCompanyEntityCopyWithImpl<$Res>
    implements _$ProductCompanyEntityCopyWith<$Res> {
  __$ProductCompanyEntityCopyWithImpl(this._self, this._then);

  final _ProductCompanyEntity _self;
  final $Res Function(_ProductCompanyEntity) _then;

/// Create a copy of ProductCompanyEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? logoPath = freezed,Object? name = null,Object? originCountry = null,}) {
  return _then(_ProductCompanyEntity(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,logoPath: freezed == logoPath ? _self.logoPath : logoPath // ignore: cast_nullable_to_non_nullable
as String?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,originCountry: null == originCountry ? _self.originCountry : originCountry // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
