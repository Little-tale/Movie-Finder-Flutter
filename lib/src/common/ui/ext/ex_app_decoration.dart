import 'package:flutter/material.dart';

class AppDecorations {
  static final glassStyle = BoxDecoration(
    color: Colors.white.withValues(alpha: 0.12),
    borderRadius: BorderRadius.circular(999),
    border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
  );

  static final glassStyle2 = BoxDecoration(
    color: Colors.white.withValues(alpha: 0.22),
    borderRadius: BorderRadius.circular(999),
    border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
  );

  static final glassStyle3 = BoxDecoration(
    color: Colors.black54.withValues(alpha: 0.22),
    borderRadius: BorderRadius.circular(999),
    border: Border.all(color: Colors.white.withValues(alpha: 0.3)),
  );
}
