// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(favoriteDb)
const favoriteDbProvider = FavoriteDbProvider._();

final class FavoriteDbProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoriteDb>,
          FavoriteDb,
          FutureOr<FavoriteDb>
        >
    with $FutureModifier<FavoriteDb>, $FutureProvider<FavoriteDb> {
  const FavoriteDbProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoriteDbProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoriteDbHash();

  @$internal
  @override
  $FutureProviderElement<FavoriteDb> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<FavoriteDb> create(Ref ref) {
    return favoriteDb(ref);
  }
}

String _$favoriteDbHash() => r'b656afd9276ce5aeb9d5733ff8f292bf8449532b';
