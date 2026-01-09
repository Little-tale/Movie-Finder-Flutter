import 'package:movie_finder/src/core/utils/utils.dart';
import 'package:movie_finder/src/data/db/DAO/favorite_db.dart';
import 'package:movie_finder/src/data/db/DAO/favorite_provider.dart';
import 'package:movie_finder/src/data/db/DAO/favorites_change_provider.dart';
import 'package:movie_finder/src/presentation/features/movie_detail/vm_state/movie_detail_state.dart';
import 'package:movie_finder/src/data/network/core/dio_provider.dart';
import 'package:movie_finder/src/data/network/core/repository/movie_repository.dart';
import 'package:movie_finder/src/core/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:velocity_x/velocity_x.dart';

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

    final favs = await ref.watch(favoriteDbProvider.future);

    final isLikes = await _requestLikeState(movieId: movieId, favs: favs);
    _requestVideos(movieId: movieId, repo: repo);

    return MovieDetailState(
      detail: detail,
      credits: credit,
      videos: [],
      isFavorite: isLikes,
    );
  }

  Future<void> refresh(int movieId) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => build(movieId));
  }

  _requestVideos({required MovieRepository repo, required int movieId}) {
    repo.getMovieVideos(movieId: movieId).then((result) async {
      await sleepAsync(2.seconds);
      if (!ref.mounted) return;
      final res = switch (result) {
        Success(value: final v) => v,
        Failure(error: final e) => throw e,
      };
      state = AsyncValue.data(
        state.value!.copyWith(videos: res, videoLoad: true),
      );
    });
  }

  Future<bool> _requestLikeState({
    required int movieId,
    required FavoriteDb favs,
  }) async {
    final result = await favs.getById(movieId.toString());
    final isFavorite = (result != null);

    return isFavorite;
  }

  changeVideoLoad(bool trigger) {
    if (!ref.mounted) return;
    state = AsyncData(state.value!.copyWith(videoLoad: trigger));
  }

  // MARK: 사용자 좋아요 반영
  void likeButtonTapped() async {
    state = AsyncValue.data(
      state.value!.copyWith(isFavorite: !state.value!.isFavorite),
    );

    final favs = await ref.read(favoriteDbProvider.future);

    final detail = state.value!.detail;

    await favs.toggle(
      movieId: detail.movieID,
      title: detail.movieName,
      genreIds: detail.genreIds,
      posterPath: detail.posterImageUrlString,
    );
    ref.read(favoritesChangedProvider.notifier).bump();
  }
}
