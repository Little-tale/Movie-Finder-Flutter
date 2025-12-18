import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/routing/app_router.dart';
import 'package:movie_finder/utils/custom_theme.dart';

void main() {
  runApp(ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(theme: customThemeData, home: TestWidget());
    return MaterialApp.router(
      theme: customThemeData,
      routerConfig: createRouter(),
    );
  }
}
