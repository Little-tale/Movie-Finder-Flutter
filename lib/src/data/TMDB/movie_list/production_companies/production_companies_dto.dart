import 'package:freezed_annotation/freezed_annotation.dart';

part 'production_companies_dto.freezed.dart';
part 'production_companies_dto.g.dart';

@freezed
sealed class ProductionCompaniesDTO with _$ProductionCompaniesDTO {
  factory ProductionCompaniesDTO({
    required int id,
    @JsonKey(name: 'logo_path') required String? logoPath,
    required String name,
  }) = _ProductionCompaniesDTO;

  factory ProductionCompaniesDTO.fromJson(Map<String, dynamic> json) =>
      _$ProductionCompaniesDTOFromJson(json);
}
