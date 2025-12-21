import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/network/core/dio_provider.dart';
import 'package:movie_finder/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// 최신 방식 riverpod
part 'vm_movie_detail_view_model.g.dart';

@riverpod
class MovieDetailVm extends _$MovieDetailVm {
  @override
  Future<MovieDetailEntity> build(int movieId) async {
    final repo = ref.watch(movieRepoProvider);
    final result = await repo.getDetails(movieId: movieId);

    return switch (result) {
      Success(value: final v) => v,
      Failure(error: final e) => throw e,
    };
  }

  Future<void> refresh(int movieId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(movieId));
  }
}
