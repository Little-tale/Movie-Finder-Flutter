import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_change_provider.g.dart';

@riverpod
class FavoritesChanged extends _$FavoritesChanged {
  @override
  int build() => 0;
  void bump() => state++;
}
