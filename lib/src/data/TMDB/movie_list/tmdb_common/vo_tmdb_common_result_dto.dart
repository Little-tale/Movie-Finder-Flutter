import 'package:freezed_annotation/freezed_annotation.dart';

part 'vo_tmdb_common_result_dto.freezed.dart';
part 'vo_tmdb_common_result_dto.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class TmdbCommonResultDto<R> with _$TmdbCommonResultDto<R> {
  const factory TmdbCommonResultDto({
    required int page,
    required List<R> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _TmdbCommonResultDto<R>;

  factory TmdbCommonResultDto.fromJson(
    Map<String, dynamic> json,
    R Function(Object?) fromJsonR,
  ) => _$TmdbCommonResultDtoFromJson(json, fromJsonR);
}
