import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:movie_finder/src/data/Entity/paged/e_paged_state.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/features/movie_list/vs_movie_list_state.dart';
import 'package:movie_finder/src/network/core/dio_provider.dart';
import 'package:movie_finder/src/network/core/repository/movie_repository.dart';
import 'package:movie_finder/utils/result.dart';
import 'package:riverpod/riverpod.dart';

final movieListVmProvider =
    AsyncNotifierProvider<VmMovieListViewModel, MovieListScreenState>(
      VmMovieListViewModel.new,
    );

final class VmMovieListViewModel extends AsyncNotifier<MovieListScreenState> {
  late final MovieRepository _repo;

  @override
  FutureOr<MovieListScreenState> build() async {
    _repo = ref.watch(movieRepoProvider);

    final topRatedResult = await _repo.topRated(page: 1);
    final popularResult = await _repo.popular(page: 1);
    final upcomingResult = await _repo.upcoming(page: 1);

    return MovieListScreenState(
      topRatedItems: PagedState<SimpleMovieEntity>(
        items: _handleResult<SimpleMovieEntity>(
          topRatedResult,
        ).take(10).toList(),
        page: 1,
        totalPages: 1,
        isLoadingMore: true,
      ),
      popularItems: PagedState<SimpleMovieEntity>(
        items: _handleResult<SimpleMovieEntity>(popularResult),
        page: 1,
        totalPages: 1,
        isLoadingMore: true,
      ),
      upcomingItems: PagedState<SimpleMovieEntity>(
        items: _handleResult<SimpleMovieEntity>(upcomingResult),
        page: 1,
        totalPages: 1,
        isLoadingMore: true,
      ),
    );
  }

  List<T> _handleResult<T>(Result<List<T>> result) {
    switch (result) {
      case Success(value: final movies):
        return movies;
      case Failure(error: final exception):
        debugPrint('$exception');
        return [];
    }
  }

  void loadMorePopularMovies() async {
    if (state.value == null) return;
    final pop = state.value!.popularItems;
    if (pop.isLoadingMore) {
      final currentPage = pop.page;
      final nextPage = currentPage + 1;

      state = AsyncValue.data(
        state.value!.copyWith(popularItems: pop.copyWith(isLoadingMore: false)),
      );

      final result = await _repo.popular(page: nextPage);
      final items = _handleResult(result);

      state = AsyncData(
        state.value!.copyWith(
          popularItems: pop.copyWith(items: pop.items + items),
        ),
      );
    }
  }
}
