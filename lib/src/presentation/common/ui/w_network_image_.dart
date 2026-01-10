import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({
    super.key,
    this.imageUrl,
    this.fit = BoxFit.cover,
    this.colorBlendMode,
    this.color,
    this.placeHolder,
  });

  final String? imageUrl;
  final BoxFit? fit;
  final Color? color;
  final BlendMode? colorBlendMode;
  final Widget? placeHolder;

  @override
  Widget build(BuildContext context) {
    debugPrint(imageUrl);
    if (imageUrl == null) {
      return _empty();
    } else {
      return CachedNetworkImage(
        imageUrl: imageUrl!,
        colorBlendMode: colorBlendMode,
        color: color,
        placeholder: (context, url) {
          return placeHolder ??
              Container(
                color: Color.fromARGB(255, 69, 69, 69).withValues(alpha: 0.5),
                child: Center(child: CircularProgressIndicator()),
              );
        },
        errorWidget: (context, url, error) {
          debugPrint('--------- Error - Image ---------');
          debugPrint(url);
          return _empty();
        },
        fit: fit,
      );
    }
  }

  Widget _empty() {
    return Container(
      color: const Color.fromARGB(255, 80, 80, 80).withValues(alpha: 0.5),
      child: Center(
        child: 'No Image'.text
            .size(20)
            .color(Colors.white)
            .semiBold
            .make()
            .fittedBox(),
      ),
    );
  }
}
