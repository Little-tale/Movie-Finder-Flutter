import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/src/common/bottom_bar/w_bottom_bar.dart';

class AppBottomShell extends StatelessWidget {
  const AppBottomShell({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBody: true,
      body: Stack(
        children: [
          navigationShell,

          Align(
            alignment: Alignment.bottomCenter,
            child: AppBottomBar(navigationShell: navigationShell),
          ),
        ],
      ),
      // bottomNavigationBar: AppBottomBar(navigationShell: navigationShell),
    );
  }
}
