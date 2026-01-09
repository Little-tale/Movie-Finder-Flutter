import 'package:flutter/material.dart';

extension FitExt on Widget {
  Widget fitBox({
    BoxFit fit = BoxFit.scaleDown,
    Alignment alignment = Alignment.centerLeft,
  }) {
    return FittedBox(fit: fit, alignment: alignment, child: this);
  }
}
