import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/domain/entities/paged/e_paged_state.dart';
import 'package:movie_finder/src/domain/entities/simple_movie/e_simple_movie_entity.dart';

part 'vs_movie_list_state.freezed.dart';

@freezed
sealed class MovieListScreenState with _$MovieListScreenState {
  factory MovieListScreenState({
    required PagedState<SimpleMovieEntity> topRatedItems,
    required PagedState<SimpleMovieEntity> popularItems,
    required PagedState<SimpleMovieEntity> upcomingItems,
    required PagedState<SimpleMovieEntity> nowPlayingItems,
  }) = _MovieListScreenState;
}
