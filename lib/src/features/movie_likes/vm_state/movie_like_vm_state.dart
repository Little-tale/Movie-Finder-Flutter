import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:movie_finder/src/data/DB/favorite_movie.dart';

part 'movie_like_vm_state.freezed.dart';

@freezed
sealed class MovieLikeVmState with _$MovieLikeVmState {
  factory MovieLikeVmState({
    required List<FavoriteMovie> movies,
    required List<int> allGenreIds,
    required int currentIdx,
  }) = _MovieLikeVmState;
}
