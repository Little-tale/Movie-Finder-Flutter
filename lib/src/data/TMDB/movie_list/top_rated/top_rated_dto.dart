import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';

part 'top_rated_dto.freezed.dart';
part 'top_rated_dto.g.dart';

@Deprecated('Use TmdbCommonResultDto instead')
@freezed
abstract class TopRatedDTO with _$TopRatedDTO {
  factory TopRatedDTO({
    @JsonKey(name: 'total_pages') required int totalPages,
    required int page,
    required List<TmdbMovieDto> results,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _TopRatedDTO;

  factory TopRatedDTO.fromJson(Map<String, dynamic> json) =>
      _$TopRatedDTOFromJson(json);
}
