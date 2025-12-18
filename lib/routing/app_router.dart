import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/app_bottom_shell.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/features/splash/w_splash.dart';
import 'package:movie_finder/w_test.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        // 단독
        path: Routes.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashWidget(),
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
                builder: (context, state) => const TestWidget(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                name: RouteNames.topRated,
                path: Routes.topRated,
                builder: (context, state) => const TestWidget2(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
