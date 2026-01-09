import 'package:flutter/material.dart';
import 'package:movie_finder/src/presentation/common/ui/ext/ex_app_decoration.dart';

class LikeButtonWidget extends StatelessWidget {
  const LikeButtonWidget({
    super.key,
    this.size,
    required this.isLiked,
    required this.onPressed,
  });

  final double? size;
  final bool isLiked;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        decoration: AppDecorations.glassStyle3,
        child: _button(),
      ),
    );
  }

  Widget _button() {
    return IconButton(
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(),
      onPressed: onPressed,
      icon: Transform.translate(
        offset: const Offset(0, 2),
        child: isLiked
            ? Icon(Icons.favorite_rounded, color: Colors.redAccent, size: size)
            : Icon(
                Icons.favorite_border_rounded,
                color: Colors.grey,
                size: size,
              ),
      ),
    );
  }
}
