// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vm_movie_detail_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MovieDetailVm)
const movieDetailVmProvider = MovieDetailVmFamily._();

final class MovieDetailVmProvider
    extends $AsyncNotifierProvider<MovieDetailVm, MovieDetailState> {
  const MovieDetailVmProvider._({
    required MovieDetailVmFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'movieDetailVmProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$movieDetailVmHash();

  @override
  String toString() {
    return r'movieDetailVmProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  MovieDetailVm create() => MovieDetailVm();

  @override
  bool operator ==(Object other) {
    return other is MovieDetailVmProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$movieDetailVmHash() => r'ce5cd1cb33b4c6ab8d0f643f5892afad22a79187';

final class MovieDetailVmFamily extends $Family
    with
        $ClassFamilyOverride<
          MovieDetailVm,
          AsyncValue<MovieDetailState>,
          MovieDetailState,
          FutureOr<MovieDetailState>,
          int
        > {
  const MovieDetailVmFamily._()
    : super(
        retry: null,
        name: r'movieDetailVmProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  MovieDetailVmProvider call(int movieId) =>
      MovieDetailVmProvider._(argument: movieId, from: this);

  @override
  String toString() => r'movieDetailVmProvider';
}

abstract class _$MovieDetailVm extends $AsyncNotifier<MovieDetailState> {
  late final _$args = ref.$arg as int;
  int get movieId => _$args;

  FutureOr<MovieDetailState> build(int movieId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<MovieDetailState>, MovieDetailState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MovieDetailState>, MovieDetailState>,
              AsyncValue<MovieDetailState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
