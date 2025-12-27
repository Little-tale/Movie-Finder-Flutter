import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchScrollControllerProvider = Provider.autoDispose<ScrollController>((
  ref,
) {
  final c = ScrollController();
  ref.onDispose(c.dispose);
  return c;
});
