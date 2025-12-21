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
    extends $AsyncNotifierProvider<MovieDetailVm, MovieDetailEntity> {
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

String _$movieDetailVmHash() => r'59ab4cd9ca26c886a4e293f2adbdfb85cb86691b';

final class MovieDetailVmFamily extends $Family
    with
        $ClassFamilyOverride<
          MovieDetailVm,
          AsyncValue<MovieDetailEntity>,
          MovieDetailEntity,
          FutureOr<MovieDetailEntity>,
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

abstract class _$MovieDetailVm extends $AsyncNotifier<MovieDetailEntity> {
  late final _$args = ref.$arg as int;
  int get movieId => _$args;

  FutureOr<MovieDetailEntity> build(int movieId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<MovieDetailEntity>, MovieDetailEntity>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<MovieDetailEntity>, MovieDetailEntity>,
              AsyncValue<MovieDetailEntity>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
