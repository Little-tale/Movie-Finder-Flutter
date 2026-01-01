import 'package:flutter/widgets.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'scroll_controller_provider.g.dart';

@riverpod
ScrollController useScrollController(Ref ref, String key) {
  final c = ScrollController();
  ref.onDispose(c.dispose);
  return c;
}
