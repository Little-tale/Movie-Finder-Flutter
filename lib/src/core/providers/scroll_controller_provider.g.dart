// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_controller_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(useScrollController)
const useScrollControllerProvider = UseScrollControllerFamily._();

final class UseScrollControllerProvider
    extends
        $FunctionalProvider<
          ScrollController,
          ScrollController,
          ScrollController
        >
    with $Provider<ScrollController> {
  const UseScrollControllerProvider._({
    required UseScrollControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'useScrollControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$useScrollControllerHash();

  @override
  String toString() {
    return r'useScrollControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $ProviderElement<ScrollController> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ScrollController create(Ref ref) {
    final argument = this.argument as String;
    return useScrollController(ref, argument);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ScrollController value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ScrollController>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is UseScrollControllerProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$useScrollControllerHash() =>
    r'932b533c9c0ba85391e8e11b95ea548ff8d05994';

final class UseScrollControllerFamily extends $Family
    with $FunctionalFamilyOverride<ScrollController, String> {
  const UseScrollControllerFamily._()
    : super(
        retry: null,
        name: r'useScrollControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  UseScrollControllerProvider call(String key) =>
      UseScrollControllerProvider._(argument: key, from: this);

  @override
  String toString() => r'useScrollControllerProvider';
}
