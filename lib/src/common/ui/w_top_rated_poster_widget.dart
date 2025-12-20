import 'package:flutter/material.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:velocity_x/velocity_x.dart';

class TopRatedPosterWidget extends StatelessWidget {
  const TopRatedPosterWidget({
    super.key,
    this.postUrlString,
    required this.rating,
    this.posterW = 140.0,
    this.posterH = 200.0,
  });

  final String? postUrlString;
  final int rating;
  final double posterW;
  final double posterH;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: posterW + 80,
      height: posterH,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          _RankNumber(rank: rating, height: posterH * 0.8),

          Positioned(
            left: posterH - posterW,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: SizedBox(
                width: posterW,
                height: posterH,
                child: NetworkImageWidget(imageUrl: postUrlString),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final class _RankNumber extends StatelessWidget {
  const _RankNumber({required this.rank, required this.height});

  final int rank;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        '$rank'.text
            .size(height)
            .bold
            .lineHeight(1)
            .letterSpacing(-35)
            .color(Colors.lightGreen[900])
            .make(),
      ],
    );
  }
}
