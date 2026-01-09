import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/src/app/routing/app_router.dart';
import 'package:movie_finder/src/core/theme/custom_theme.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

final routerProvider = Provider<GoRouter>((ref) => createRouter());

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    return MaterialApp.router(theme: customThemeData, routerConfig: router);
  }
}
