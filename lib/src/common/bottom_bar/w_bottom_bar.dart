import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/common/bottom_bar/w_bottom_nav_button.dart';
import 'package:movie_finder/src/features/movie_search/search_scroll_provider/search_scroll_provider.dart';
import 'package:velocity_x/velocity_x.dart';

enum TabItem {
  home(0),
  search(1);

  final int idx;
  const TabItem(this.idx);
  // favorites

  String get title {
    switch (this) {
      case TabItem.home:
        return "Home";
      case TabItem.search:
        return "Search";
    }
  }

  IconData get icon {
    switch (this) {
      case TabItem.home:
        return Icons.home;
      case TabItem.search:
        return Icons.search;
    }
  }
}

// MARK: UI
class AppBottomBar extends ConsumerWidget {
  final cornerRadius = 24.0;
  final StatefulNavigationShell navigationShell;

  const AppBottomBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = navigationShell.currentIndex;

    return SizedBox(
      height: context.bottomBarHeight + context.bottomSafeArea,
      child: _buildBottomBar(context, currentIndex, ref),
    );
  }

  Widget _buildBottomBar(
    BuildContext context,
    int currentIndex,
    WidgetRef ref,
  ) {
    final sidePad = context.blockSizeHorizontal * 4; // 최소 패딩
    const maxBarWidth = 520.0;
    const maxBarHeight = 80.0;
    return Padding(
      padding: EdgeInsets.fromLTRB(sidePad, 0, sidePad, context.bottomSafeArea),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: maxBarWidth,
            maxHeight: maxBarHeight,
          ),
          child: barItems(context, currentIndex, ref),
        ),
      ),
    );
  }

  Widget barItems(BuildContext context, int currentIndex, WidgetRef ref) {
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          height: context.bottomBarHeight,
          decoration: BoxDecoration(
            color: Color(0xFFD1F0E4).withValues(alpha: 0.55),
            borderRadius: BorderRadius.circular(cornerRadius),
          ),
          child: Row(
            children: TabItem.values
                .map(
                  (item) => BottomNavButton(
                    title: item.title,
                    icon: item.icon,
                    index: item.idx,
                    currentIndex: currentIndex,
                    onTab: (index) {
                      navigationShell.goBranch(index);
                      // MARK: Search Tab Index
                      if (index == 1) {
                        final c = ref.read(searchScrollControllerProvider);
                        if (c.hasClients) {
                          c.animateTo(
                            0,
                            duration: 250.milliseconds,
                            curve: Curves.easeInOut,
                          );
                        }
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ),
      ),
    );
  }
}
