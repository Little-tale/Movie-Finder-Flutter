// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pv_search_bar.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchBar)
const searchBarProvider = SearchBarProvider._();

final class SearchBarProvider
    extends $NotifierProvider<SearchBar, SearchBarState> {
  const SearchBarProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchBarProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchBarHash();

  @$internal
  @override
  SearchBar create() => SearchBar();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchBarState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchBarState>(value),
    );
  }
}

String _$searchBarHash() => r'3216c5176d786b929c67d4e4f49044e523607c4a';

abstract class _$SearchBar extends $Notifier<SearchBarState> {
  SearchBarState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<SearchBarState, SearchBarState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<SearchBarState, SearchBarState>,
              SearchBarState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
