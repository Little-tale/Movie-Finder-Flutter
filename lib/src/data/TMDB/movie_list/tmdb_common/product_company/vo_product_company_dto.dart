import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_product_company_dto.freezed.dart';
part 'vo_product_company_dto.g.dart';

@freezed
sealed class ProductCompanyDto with _$ProductCompanyDto {
  factory ProductCompanyDto({
    required int id,
    String? logoPath,
    required String name,
    required String originCountry,
  }) = _ProductCompanyDto;

  factory ProductCompanyDto.fromJson(Map<String, dynamic> json) =>
      _$ProductCompanyDtoFromJson(json);
}
