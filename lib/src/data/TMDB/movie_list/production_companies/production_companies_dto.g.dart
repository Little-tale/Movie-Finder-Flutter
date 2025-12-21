// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductionCompaniesDTO _$ProductionCompaniesDTOFromJson(
  Map<String, dynamic> json,
) => _ProductionCompaniesDTO(
  id: (json['id'] as num).toInt(),
  logoPath: json['logo_path'] as String?,
  name: json['name'] as String,
);

Map<String, dynamic> _$ProductionCompaniesDTOToJson(
  _ProductionCompaniesDTO instance,
) => <String, dynamic>{
  'id': instance.id,
  'logo_path': instance.logoPath,
  'name': instance.name,
};
