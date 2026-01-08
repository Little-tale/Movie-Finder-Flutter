import 'package:flutter/material.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:velocity_x/velocity_x.dart';

class NamedPosterWidget extends StatelessWidget {
  const NamedPosterWidget({
    super.key,
    this.posterUrl,
    required this.height,
    required this.title,
  });

  final double height;
  final String? posterUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    const radius = 12.0;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        boxShadow: const [
          BoxShadow(
            blurRadius: 18,
            spreadRadius: 0,
            offset: Offset(0, 4),
            color: Colors.black26,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: SizedBox(
          width: height * 0.7,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: height,
                child: NetworkImageWidget(imageUrl: posterUrl),
              ),
              Container(
                width: double.infinity,
                height: height * 0.25,
                color: Colors.black54,
                alignment: Alignment.center,
                child: title.text
                    .size(24)
                    .color(Colors.white)
                    .align(TextAlign.center)
                    .medium
                    .maxLines(2)
                    .ellipsis
                    .make()
                    .pSymmetric(h: 8),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
