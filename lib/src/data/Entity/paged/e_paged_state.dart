import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_paged_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
sealed class PagedState<T> with _$PagedState<T> {
  const factory PagedState({
    required List<T> items,
    required int page,
    // required int totalPages,
    required bool isLoadingMore,
  }) = _PagedState<T>;
}
