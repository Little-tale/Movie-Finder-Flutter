import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/TMDB/movie_list/tmdb_movie/tmdb_movie_videos/tmdb_video/tmdb_video_dto.dart';

part 'tmdb_movie_videos_dto.freezed.dart';
part 'tmdb_movie_videos_dto.g.dart';

@freezed
sealed class TmdbMovieVideosDto with _$TmdbMovieVideosDto {
  @JsonSerializable(fieldRename: FieldRename.snake)
  factory TmdbMovieVideosDto({
    required int id,
    required List<TmdbVideoDto> results,
  }) = _TmdbMovieVideosDto;

  factory TmdbMovieVideosDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbMovieVideosDtoFromJson(json);
}
