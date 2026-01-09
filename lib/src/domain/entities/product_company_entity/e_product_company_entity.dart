import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_product_company_entity.freezed.dart';

@freezed
sealed class ProductCompanyEntity with _$ProductCompanyEntity {
  factory ProductCompanyEntity({
    required int id,
    String? logoPath,
    required String name,
    required String originCountry,
  }) = _ProductCompanyEntity;
}
