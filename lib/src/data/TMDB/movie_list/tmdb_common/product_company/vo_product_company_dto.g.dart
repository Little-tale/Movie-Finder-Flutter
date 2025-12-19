// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vo_product_company_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductCompanyDto _$ProductCompanyDtoFromJson(Map<String, dynamic> json) =>
    _ProductCompanyDto(
      id: (json['id'] as num).toInt(),
      logoPath: json['logoPath'] as String?,
      name: json['name'] as String,
      originCountry: json['originCountry'] as String,
    );

Map<String, dynamic> _$ProductCompanyDtoToJson(_ProductCompanyDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'logoPath': instance.logoPath,
      'name': instance.name,
      'originCountry': instance.originCountry,
    };
