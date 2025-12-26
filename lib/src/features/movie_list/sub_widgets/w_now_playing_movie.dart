import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/routing/routes.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:movie_finder/src/data/Entity/simple_movie/e_simple_movie_entity.dart';
import 'package:movie_finder/src/features/movie_list/vm_movie_list_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

final class NowPlayingWidget extends ConsumerWidget {
  const NowPlayingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(
      movieListVmProvider.select((p) {
        return p.whenData((items) {
          return items.nowPlayingItems;
        });
      }),
    );
    return items.when(
      data: (data) {
        return _body(data.items);
      },
      error: (e, s) {
        return Text('$e');
      },
      loading: () {
        return Container();
      },
    );
  }

  SizedBox _body(List<SimpleMovieEntity> datas) {
    return SizedBox(
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          _blurBackDropPoster(datas),

          VStack(crossAlignment: CrossAxisAlignment.center, [
            '지금 사람들이'.text.color(Colors.white).size(24).bold.make(),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
                children: [
                  const TextSpan(text: '시청중인 '),
                  TextSpan(
                    text: '컨텐츠',
                    style: const TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 26,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                  const TextSpan(text: '들을 만나보세요'),
                ],
              ),
            ).pOnly(bottom: 18),

            SizedBox(
              height: 150,
              child: ListView.builder(
                itemCount: datas.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _listItems(datas, index).onTap(() {
                    context.pushNamed(
                      RouteNames.detail,
                      pathParameters: {'id': datas[index].id.toString()},
                    );
                  });
                },
              ),
            ),
          ]),
        ],
      ).pSymmetric(h: 12),
    );
  }

  Widget _listItems(List<SimpleMovieEntity> datas, int index) {
    return Padding(
          padding: EdgeInsets.all(4.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.white.withValues(alpha: 0.3),
                width: 1.5,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: NetworkImageWidget(imageUrl: datas[index].posterUrl),
            ),
          ),
        )
        .pOnly(left: index == 0 ? 6 : 0)
        .pOnly(right: (datas.length - 1) == index ? 6 : 0);
  }

  Widget _blurBackDropPoster(List<SimpleMovieEntity> datas) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(24),
      child: SizedBox(
        width: double.infinity,
        child: datas.first.posterUrl != null
            ? ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15,
                  tileMode: TileMode.clamp,
                ),
                child: NetworkImageWidget(imageUrl: datas.first.posterUrl!),
              )
            : Container(color: Colors.amberAccent),
      ),
    );
  }
}
