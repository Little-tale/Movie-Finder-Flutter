import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/features/movie_list/vm_movie_list_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class UpcomingCarouselWidget extends ConsumerStatefulWidget {
  const UpcomingCarouselWidget({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _UpcomingCarouselWidgetState();
}

class _UpcomingCarouselWidgetState
    extends ConsumerState<UpcomingCarouselWidget> {
  late final PageController _controller;
  double _page = 0;

  @override
  void initState() {
    super.initState();
    _controller = PageController(viewportFraction: 0.8);
    _controller.addListener(() {
      final p = _controller.page;
      if (p == null) return;
      setState(() => _page = p);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(
      movieListVmProvider.select((p) {
        return p.whenData((value) {
          return value.upcomingItems;
        });
      }),
    );
    final height = context.screenWidth * 1.21;

    return state.when(
      data: (data) {
        return _body(height, data.items);
      },
      error: (e, _) {
        return Column(children: [Text('$e')]);
      },
      loading: () {
        return Container();
      },
    );
  }

  Widget _body(double height, List<SimpleMovieEntity> items) {
    return Column(
      spacing: 8,

      children: [
        '상영 예정작'.text.bold.size(24).make(),
        SizedBox(
          height: height,
          child: PageView.builder(
            controller: _controller,
            itemCount: items.length,
            clipBehavior: Clip.none,
            itemBuilder: (context, index) {
              final calcResult = calcView(index);

              return Transform.translate(
                offset: Offset(0, calcResult.translateY),
                child: Transform.scale(
                  scale: calcResult.scale,
                  alignment: Alignment.center,
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 12,
                          spreadRadius: 3,
                          offset: Offset(0, 6),
                          color: Colors.black26,
                        ),
                      ],
                    ),
                    child:
                        ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(24),
                          child: NetworkImageWidget(
                            imageUrl: items[index].posterUrl,
                          ),
                        ).onTap(() {
                          context.pushNamed(
                            RouteNames.detail,
                            pathParameters: {'id': items[index].id.toString()},
                          );
                        }),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  ({double diff, double scale, double translateY}) calcView(int index) {
    final diff = (_page - index).abs();

    // 중앙 1.0, <-> 0.85
    final scale = (1 - diff * 0.12).clamp(0.85, 1.0);

    // 아래 Y 도
    final translateY = (1 - scale) * 32;

    return (diff: diff, scale: scale, translateY: translateY);
  }
}
