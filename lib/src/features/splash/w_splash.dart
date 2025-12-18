import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/utils/Images.dart';
import 'package:velocity_x/velocity_x.dart';

// 사실 이렇게 할 필요는 없는데 리버팟에 익숙해 지기 위한 연습!
final _splashDelayProvider = FutureProvider.autoDispose<void>((ref) async {
  await Future.delayed(const Duration(seconds: 5));
});

class SplashWidget extends ConsumerWidget {
  const SplashWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // provider 실행(3초 딜레이 시작)
    final _ = ref.watch(_splashDelayProvider);

    ref.listen<AsyncValue<void>>(_splashDelayProvider, (prev, next) {
      next.whenData((_) {
        context.goNamed(RouteNames.home);
      });
    });

    return Scaffold(
      backgroundColor: const Color(0xFFD1F0E4),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ImageExt.assetType(Images.logo),
              '영화를 찾고 싶을땐?'.text.size(30).semiBold.make().fittedBox(),
              '영찾!'.text.size(40).bold.make().fittedBox(),
              20.heightBox,
            ],
          ),
        ),
      ),
    );
  }
}
