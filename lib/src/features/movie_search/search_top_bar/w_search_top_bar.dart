import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/src/features/movie_search/searchBar/pv_search_bar.dart';
import 'package:movie_finder/src/features/movie_search/searchBar/w_search_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchTopBar extends ConsumerStatefulWidget {
  const SearchTopBar({super.key, required this.onEditingComplete});
  final VoidCallback onEditingComplete;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchTopBarState();
}

class _SearchTopBarState extends ConsumerState<SearchTopBar> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      ref.read(searchBarProvider.notifier).changeFocus(_focusNode.hasFocus);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(searchBarProvider);
    return HStack([
      _leadingTitle(isFocus: state.isFocus),
      8.widthBox,

      Expanded(
        // MARK: SearchBar
        child: SearchBarWidget(
          focusNode: _focusNode,
          onEditingComplete: widget.onEditingComplete,
        ),
      ),
    ]);
  }

  // MARK: Title
  Widget _leadingTitle({required bool isFocus}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      curve: Curves.easeOut,
      width: isFocus ? 0 : 55,
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 180),
        child: isFocus
            ? const SizedBox()
            : Align(
                alignment: Alignment.centerLeft,
                child: '영찾'.text
                    .size(24)
                    .bold
                    .color(Colors.white.withValues(alpha: 0.9))
                    .make()
                    .fittedBox(),
              ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}
