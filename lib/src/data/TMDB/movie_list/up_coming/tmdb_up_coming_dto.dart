import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_dates_dto.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_dto.dart';

part 'tmdb_up_coming_dto.freezed.dart';
part 'tmdb_up_coming_dto.g.dart';

@freezed
abstract class TmdbUpcomingDTO with _$TmdbUpcomingDTO {
  factory TmdbUpcomingDTO({
    required TmdbDatesDto dates,
    required List<TmdbMovieDto> results,
    @JsonKey(name: 'total_pages') required int totalPages,
    @JsonKey(name: 'total_results') required int totalResults,
  }) = _TmdbUpcomingDTO;

  factory TmdbUpcomingDTO.fromJson(Map<String, dynamic> json) =>
      _$TmdbUpcomingDTOFromJson(json);
}
