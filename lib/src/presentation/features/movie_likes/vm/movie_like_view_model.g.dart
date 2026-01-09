// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_like_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MovieLikeViewModel)
const movieLikeViewModelProvider = MovieLikeViewModelProvider._();

final class MovieLikeViewModelProvider
    extends $AsyncNotifierProvider<MovieLikeViewModel, MovieLikeVmState> {
  const MovieLikeViewModelProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'movieLikeViewModelProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$movieLikeViewModelHash();

  @$internal
  @override
  MovieLikeViewModel create() => MovieLikeViewModel();
}

String _$movieLikeViewModelHash() =>
    r'9a85bcde9ed67ba879906d9a7012923882d96aa8';

abstract class _$MovieLikeViewModel extends $AsyncNotifier<MovieLikeVmState> {
  FutureOr<MovieLikeVmState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<MovieLikeVmState>, MovieLikeVmState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MovieLikeVmState>, MovieLikeVmState>,
              AsyncValue<MovieLikeVmState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
