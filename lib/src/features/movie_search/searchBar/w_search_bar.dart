import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_finder/src/features/movie_search/searchBar/pv_search_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchBarWidget extends ConsumerWidget {
  const SearchBarWidget({
    super.key,
    required this.focusNode,
    required this.onEditingComplete,
  });

  final FocusNode focusNode;
  final VoidCallback onEditingComplete;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchBarState = ref.watch(searchBarProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.12),
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            size: 24,
            color: const Color.fromARGB(
              255,
              255,
              255,
              255,
            ).withValues(alpha: 0.3),
          ),
          4.widthBox,
          Expanded(
            child: TextFormField(
              focusNode: focusNode,
              keyboardType: TextInputType.text,
              initialValue: searchBarState.text,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hint: '시리즈, 영화를 검색해 보세요...'.text
                    .size(16)
                    .semiBold
                    .color(Colors.grey[700])
                    .make(),
                border: InputBorder.none,
                isDense: true,
              ),
              onChanged: (value) {
                ref.read(searchBarProvider.notifier).changedText(value);
              },
              onEditingComplete: onEditingComplete,
            ),
          ),
        ],
      ),
    );
  }
}
