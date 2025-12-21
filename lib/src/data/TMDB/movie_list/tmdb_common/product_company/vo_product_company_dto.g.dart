// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_product_company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCompanyDto _$ProductCompanyDtoFromJson(Map<String, dynamic> json) =>
    _ProductCompanyDto(
      id: (json['id'] as num).toInt(),
      logoPath: json['logo_path'] as String?,
      name: json['name'] as String,
      originCountry: json['origin_country'] as String,
    );

Map<String, dynamic> _$ProductCompanyDtoToJson(_ProductCompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logo_path': instance.logoPath,
      'name': instance.name,
      'origin_country': instance.originCountry,
    };
