// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vm_movie_search.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MovieSearchViewModel)
const movieSearchViewModelProvider = MovieSearchViewModelProvider._();

final class MovieSearchViewModelProvider
    extends
        $AsyncNotifierProvider<MovieSearchViewModel, SearchMovieScreenState> {
  const MovieSearchViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieSearchViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieSearchViewModelHash();

  @$internal
  @override
  MovieSearchViewModel create() => MovieSearchViewModel();
}

String _$movieSearchViewModelHash() =>
    r'e9cbfb469973bd520a16015aca6f7c4c23bae7c0';

abstract class _$MovieSearchViewModel
    extends $AsyncNotifier<SearchMovieScreenState> {
  FutureOr<SearchMovieScreenState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<AsyncValue<SearchMovieScreenState>, SearchMovieScreenState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SearchMovieScreenState>,
                SearchMovieScreenState
              >,
              AsyncValue<SearchMovieScreenState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
