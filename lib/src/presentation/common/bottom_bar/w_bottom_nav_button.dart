import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_finder/src/core/app/app_size.dart';
import 'package:velocity_x/velocity_x.dart';

class BottomNavButton extends StatelessWidget {
  const BottomNavButton({
    super.key,
    required this.icon,
    required this.index,
    required this.currentIndex,
    required this.onTab,
    required this.title,
  });

  final IconData icon;
  final int index;
  final int currentIndex;
  final String title;
  final void Function(int) onTab;

  @override
  Widget build(BuildContext context) {
    final selected = index == currentIndex;

    return Expanded(
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        pressedOpacity: 0.4,
        onPressed: () => onTab(index),
        child: AnimatedScale(
          scale: selected ? 1.1 : 1.0,
          duration: 400.milliseconds,
          child: VStack(spacing: 0, [
            Icon(
              size: iconSize(context),
              icon,
              color: selected
                  ? const Color.fromARGB(255, 147, 8, 207)
                  : const Color.fromARGB(136, 220, 220, 220),
            ),
            if (!selected)
              Text(
                title,
                style: TextStyle(
                  fontSize: 10,
                  color: Color.fromARGB(136, 220, 220, 220),
                ),
              ).py4(),
          ]),
        ),
      ),
    );
  }

  double iconSize(BuildContext context) {
    final h = context.bottomBarHeight;
    return (h * 0.4).clamp(22.0, 30.0);
  }
}
