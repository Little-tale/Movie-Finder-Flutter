import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

final class NetworkImageWidget extends StatelessWidget {
  const NetworkImageWidget({super.key, this.imageUrl, this.fit = BoxFit.cover});

  final String? imageUrl;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    debugPrint(imageUrl);
    if (imageUrl == null) {
      return _empty();
    } else {
      return CachedNetworkImage(
        imageUrl: imageUrl!,
        placeholder: (context, url) => Container(
          color: Color.fromARGB(255, 224, 255, 232).withValues(alpha: 0.9),
          child: Center(child: CircularProgressIndicator()),
        ),
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
      color: const Color.fromARGB(255, 224, 255, 232).withValues(alpha: 0.9),
      child: Center(
        child: 'No Image'.text.size(20).semiBold.make().fittedBox(),
      ),
    );
  }
}
