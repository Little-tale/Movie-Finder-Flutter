import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/Entity/credits/e_tmdb_credits_entity.dart';
import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/data/Entity/movie_video/e_movie_video_entity.dart';

part 'movie_detail_state.freezed.dart';

@freezed
sealed class MovieDetailState with _$MovieDetailState {
  const factory MovieDetailState({
    required MovieDetailEntity detail,
    required TmdbCreditsEntity credits,
    required List<MovieVideoEntity> videos,
    @Default(false) bool isFavorite,
    @Default(0) int selectedTab,
  }) = _MovieDetailState;
}
