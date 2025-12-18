import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/features/splash/w_splash.dart';
import 'package:movie_finder/w_test.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: Routes.splash,
    routes: [
      GoRoute(
        path: Routes.splash,
        name: RouteNames.splash,
        builder: (context, state) => const SplashWidget(),
      ),
      GoRoute(
        path: Routes.home,
        name: RouteNames.home,
        builder: (context, state) => const TestWidget(),
      ),
    ],
  );
}
