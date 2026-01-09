import 'package:flutter/material.dart';
import 'package:movie_finder/src/domain/entities/paged/e_paged_state.dart';
import 'package:movie_finder/src/domain/entities/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/presentation/features/movie_search/searchBar/pv_search_bar.dart';
import 'package:movie_finder/src/presentation/features/movie_search/vm_state/movie_search_state.dart';
import 'package:movie_finder/src/data/network/core/dio_provider.dart';
import 'package:movie_finder/src/data/network/core/repository/movie_repository.dart';
import 'package:movie_finder/src/data/network/core/repository/tmdb_search_repository.dart';
import 'package:movie_finder/src/core/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vm_movie_search.g.dart';

@riverpod
class MovieSearchViewModel extends _$MovieSearchViewModel {
  late final MovieRepository _repo;
  late final TmdbSearchRepository _searchRepo;

  @override
  FutureOr<SearchMovieScreenState> build() async {
    _repo = ref.watch(movieRepoProvider);
    _searchRepo = ref.watch(searchRepoProvider);

    final popularResult = await _repo.nowPlaying(page: 1);
    final recommendResult = await _repo.popular(page: 1);

    return SearchMovieScreenState(
      popularItems: PagedState<SimpleMovieEntity>(
        items: _handleResult<SimpleMovieEntity>(popularResult),
        page: 1,
        isLoadingMore: true,
      ),
      recommendItems: PagedState<SimpleMovieEntity>(
        items: _handleResult<SimpleMovieEntity>(recommendResult),
        page: 1,
        isLoadingMore: true,
      ),
      searchResultsItems: PagedState(items: [], page: 1, isLoadingMore: true),
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

  // MARK: APIs
  void searchText({required bool isFirst}) async {
    final text = ref.read(searchBarProvider).text;
    // Copy
    PagedState<SimpleMovieEntity> searchItems = state.value!.searchResultsItems
        .copyWith();

    if (!isFirst && !searchItems.isLoadingMore) {
      return;
    }

    int page = searchItems.page;

    if (isFirst) {
      page = 1;
      if (text.isEmpty) {
        searchItems = searchItems.copyWith(items: [], isLoadingMore: false);
      }
      searchItems = searchItems.copyWith(isLoadingMore: false);
    } else {
      page += 1;
      searchItems = searchItems.copyWith(isLoadingMore: false);
    }

    state = AsyncData(state.value!.copyWith(searchResultsItems: searchItems));

    final searchResult = await _searchRepo.searchMovie(query: text, page: page);
    final result = _handleResult(searchResult);

    if (result.isEmpty) {
      return;
    }

    final value = isFirst ? result : searchItems.items + result;

    state = AsyncData(
      state.value!.copyWith(
        searchResultsItems: searchItems.copyWith(
          items: value,
          isLoadingMore: true,
          page: page,
        ),
      ),
    );
  }
}
