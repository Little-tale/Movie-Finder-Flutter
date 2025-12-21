import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/app_bottom_shell.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/features/movie_detail/s_movie_detail.dart';
import 'package:movie_finder/src/features/movie_list/s_movie_list.dart';
import 'package:movie_finder/src/features/splash/w_splash.dart';
import 'package:movie_finder/w_test.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

GoRouter createRouter() {
  return GoRouter(
    initialLocation: Routes.splash,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        // 단독
        path: Routes.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashWidget(),
      ),

      // Detail
      GoRoute(
        path: Routes.detail,
        name: RouteNames.detail,
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          final id = int.parse(state.pathParameters['id'] ?? '0');
          return MovieDetailScreen(id);
        },
      ),

      // MARK: Bottom Tab
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return AppBottomShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: Routes.home,
                name: RouteNames.home,
                builder: (context, state) => const MovieListScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                name: RouteNames.topRated,
                path: Routes.topRated,
                builder: (context, state) => const TestWidget(number: 2),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
