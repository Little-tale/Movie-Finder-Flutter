import 'package:flutter/material.dart';

final class StarRatingWidget extends StatelessWidget {
  const StarRatingWidget({
    super.key,
    required this.rating,
    required this.max,
    required this.spacing,
    required this.filledColor,
    required this.emptyColor,
  });

  final double rating;
  final double max;
  final double spacing;
  final Color filledColor;
  final Color emptyColor;

  @override
  Widget build(BuildContext context) {
    final normal = _normalToStars(rating: rating, max: max);
    final half = (normal * 2).round() / 2;

    final full = half.floor(); // Full Star
    final halfs = (half - full) >= 0.5;
    final empty = 5 - full - (halfs ? 1 : 0);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < full; i++) ...[
          Icon(Icons.star, color: filledColor),
          SizedBox(width: spacing),
        ],

        if (halfs) ...[
          Icon(Icons.star_half, color: filledColor),
          SizedBox(width: spacing),
        ],
        for (var i = 0; i < empty; i++) ...[
          Icon(Icons.star_border, color: emptyColor),
          if (i != empty - 1) SizedBox(width: spacing),
        ],
      ],
    );
  }

  double _normalToStars({required double rating, required double max}) {
    final clamped = rating.clamp(0, max);
    return (clamped / max) * 5;
  }
}
