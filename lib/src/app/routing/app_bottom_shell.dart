import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/src/presentation/common/bottom_bar/w_bottom_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class AppBottomShell extends StatelessWidget {
  const AppBottomShell({super.key, required this.navigationShell});
  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final keyboardOpen = MediaQuery.viewInsetsOf(context).bottom > 0;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          navigationShell,
          Align(
            alignment: Alignment.bottomCenter,
            child: AnimatedSlide(
              duration: 100.milliseconds,
              offset: keyboardOpen ? const Offset(0, 1) : Offset.zero,
              child: AnimatedOpacity(
                duration: 100.milliseconds,
                opacity: keyboardOpen ? 0 : 1,
                child: AppBottomBar(navigationShell: navigationShell),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
