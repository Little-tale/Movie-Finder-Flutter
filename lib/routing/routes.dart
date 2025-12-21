/*
sealed 클래스는 사실 abstract 클래스이다.
extends(상속)하거나 implements(구현)하지 못하게 한다.
switch 매칭에서 누락된 케이스를 컴파일 타임에 잡아주는(=exhaustive check) 효과도 생긴다.
*/
sealed class Routes {
  static const splash = '/${RouteNames.splash}';
  static const home = '/${RouteNames.home}';
  static const topRated = '/${RouteNames.topRated}';
  static const detail = '/${RouteNames.detail}/:id';
}

sealed class RouteNames {
  static const splash = 'splash';
  static const home = 'home';
  static const topRated = 'topRated';
  static const detail = 'detail';
}
