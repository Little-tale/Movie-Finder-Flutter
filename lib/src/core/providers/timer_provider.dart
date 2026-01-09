import 'dart:async';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'timer_provider.g.dart';

@riverpod
class TimerProvider extends _$TimerProvider {
  Timer? _timer;
  bool ifStart = false;

  @override
  build() {
    ref.onDispose(() => _timer?.cancel());
    return true;
  }

  void pulse([Duration duration = const Duration(seconds: 2)]) {
    _timer?.cancel();
    state = true;
    _timer = Timer(duration, () {
      if (!ref.mounted) return;
      state = false;
    });
  }

  void delayStart([Duration duration = const Duration(seconds: 2)]) {
    _timer?.cancel();
    state = true;
    _timer = Timer(duration, () {
      if (!ref.mounted) return;
      state = false;
    });
  }

  void show() {
    _timer?.cancel();
    state = true;
  }

  void hide() {
    _timer?.cancel();
    state = false;
  }
}
