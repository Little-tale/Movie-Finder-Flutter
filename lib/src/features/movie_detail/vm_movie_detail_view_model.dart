import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/features/movie_detail/vm_state/movie_detail_state.dart';
import 'package:movie_finder/src/network/core/dio_provider.dart';
import 'package:movie_finder/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// 최신 방식 riverpod
part 'vm_movie_detail_view_model.g.dart';

@riverpod
class MovieDetailVm extends _$MovieDetailVm {
  @override
  Future<MovieDetailState> build(int movieId) async {
    final repo = ref.watch(movieRepoProvider);
    final detailResult = await repo.getDetails(movieId: movieId);
    final creditResult = await repo.getCredits(movieId: movieId);

    final detail = switch (detailResult) {
      Success(value: final v) => v,
      Failure(error: final e) => throw e,
    };

    final credit = switch (creditResult) {
      Success(value: final v) => v,
      Failure(error: final e) => throw e,
    };

    return MovieDetailState(detail: detail, credits: credit);
  }

  Future<void> refresh(int movieId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(movieId));
  }
}
