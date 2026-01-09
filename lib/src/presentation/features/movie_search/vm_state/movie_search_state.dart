import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/domain/entities/paged/e_paged_state.dart';
import 'package:movie_finder/src/domain/entities/simple_movie/e_simple_movie_entity.dart';

part 'movie_search_state.freezed.dart';

@freezed
sealed class SearchMovieScreenState with _$SearchMovieScreenState {
  factory SearchMovieScreenState({
    required PagedState<SimpleMovieEntity> popularItems,
    required PagedState<SimpleMovieEntity> recommendItems,
    required PagedState<SimpleMovieEntity> searchResultsItems,
  }) = _SearchMovieScreenState;
}
