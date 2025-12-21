import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/Entity/product_company_entity/e_product_company_entity.dart';

part 'movie_detail_entity.freezed.dart';

@freezed
sealed class MovieDetailEntity with _$MovieDetailEntity {
  factory MovieDetailEntity({
    required String? backImageUrlString,
    required String? posterImageUrlString,
    required String movieName,
    required String movieDetailString,
    required bool likeState,
    required DateTime? releaseDate,
    required double voteAverage,
    required List<String> genres,
    required List<ProductCompanyEntity> productionCompanies,
  }) = _MovieDetailEntity;
}
