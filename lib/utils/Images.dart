import 'package:flutter/material.dart';

enum Images {
  logo('icon'),
  splash('splash_logo');

  final String fileName;
  const Images(this.fileName);

  String get path => 'assets/images/$fileName.png';
}

extension ImageExt on Image {
  static Image assetType(Images type) {
    return Image.asset(type.path);
  }
}
