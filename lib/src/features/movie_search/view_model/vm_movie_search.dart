import 'package:flutter/material.dart';
import 'package:movie_finder/src/data/Entity/paged/e_paged_state.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/features/movie_search/view_model/movie_search_state.dart';
import 'package:movie_finder/src/network/core/dio_provider.dart';
import 'package:movie_finder/src/network/core/repository/movie_repository.dart';
import 'package:movie_finder/utils/result.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'vm_movie_search.g.dart';

@riverpod
class MovieSearchViewModel extends _$MovieSearchViewModel {
  late final MovieRepository _repo;

  @override
  FutureOr<SearchMovieScreenState> build() async {
    _repo = ref.watch(movieRepoProvider);

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
}
