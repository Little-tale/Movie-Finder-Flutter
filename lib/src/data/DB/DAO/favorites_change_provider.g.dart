// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_change_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FavoritesChanged)
const favoritesChangedProvider = FavoritesChangedProvider._();

final class FavoritesChangedProvider
    extends $NotifierProvider<FavoritesChanged, int> {
  const FavoritesChangedProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesChangedProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesChangedHash();

  @$internal
  @override
  FavoritesChanged create() => FavoritesChanged();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$favoritesChangedHash() => r'a5df3dbe69119745a461600df75f14fec88af9db';

abstract class _$FavoritesChanged extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
