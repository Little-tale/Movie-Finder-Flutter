import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

enum TabItem {
  home,
  search,
  // favorites
}

// MARK: UI
class AppBottomBar extends ConsumerWidget {
  final cornerRadius = 24.0;

  final StatefulNavigationShell navigationShell;

  const AppBottomBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = navigationShell.currentIndex;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(cornerRadius),
        topRight: Radius.circular(cornerRadius),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
        ],
        onTap: (index) {
          navigationShell.goBranch(index);
        },
        showSelectedLabels: true,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        elevation: 1,
        backgroundColor: Color(0xFFD1F0E4),
      ),
    );
  }
}
