import 'package:movie_finder/src/data/DB/DAO/favorite_provider.dart';
import 'package:movie_finder/src/data/DB/DAO/favorites_change_provider.dart';
import 'package:movie_finder/src/features/movie_likes/vm_state/movie_like_vm_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'movie_like_view_model.g.dart';

@riverpod
class MovieLikeViewModel extends _$MovieLikeViewModel {
  @override
  FutureOr<MovieLikeVmState> build() async {
    ref.watch(favoritesChangedProvider);
    final fvDB = await ref.watch(favoriteDbProvider.future);

    final result = await fvDB.getAll();

    final allGenreIds = result.expand((m) => m.genreIds).toSet().toList()
      ..sort();

    return MovieLikeVmState(
      movies: result,
      allGenreIds: allGenreIds,
      currentIdx: 0,
    );
  }

  void tappedGenreIdx(int idx) async {
    final currentIdx = state.value?.currentIdx ?? 0;

    if (state.value == null || currentIdx == idx) {
      return;
    }

    final fvDB = await ref.watch(favoriteDbProvider.future);

    if (idx == 0) {
      final result = await fvDB.getAll();
      state = AsyncData(state.value!.copyWith(movies: result, currentIdx: idx));
    } else {
      final result = await fvDB.getByGenreId(state.value!.allGenreIds[idx - 1]);
      state = AsyncData(state.value!.copyWith(movies: result, currentIdx: idx));
    }
  }
}
