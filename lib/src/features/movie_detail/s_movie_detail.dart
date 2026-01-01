import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/common/providers/timer_provider.dart';
import 'package:movie_finder/src/common/ui/ext/ex_app_decoration.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:movie_finder/src/common/ui/w_star_rating.dart';
import 'package:movie_finder/src/common/ui/youtube/w_youtube_players.dart';
import 'package:movie_finder/src/data/Entity/credits/e_tmdb_credits_entity.dart';
import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/data/Entity/movie_video/e_movie_video_entity.dart';
import 'package:movie_finder/src/data/Entity/product_company_entity/e_product_company_entity.dart';
import 'package:movie_finder/src/features/movie_detail/vm_movie_detail_view_model.dart';
import 'package:movie_finder/src/features/movie_detail/vm_state/movie_detail_state.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieDetailScreen extends ConsumerWidget {
  const MovieDetailScreen(this.movieID, {super.key});

  final int movieID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModelProvider = movieDetailVmProvider(movieID);

    ref.listen(viewModelProvider, (prev, next) {
      final prevHasVideos = prev?.value?.videos.isNotEmpty ?? false;
      final nextHasVideos = next.value?.videos.isNotEmpty ?? false;
      if (!prevHasVideos && nextHasVideos) {
        ref.read(timerProviderProvider.notifier).delayStart(3.seconds);
      }
    });

    final state = ref.watch(movieDetailVmProvider(movieID));

    final headerHeight = context.screenSize.width * 9 / 16;
    final headerWithSafe = context.safeAreaTop + headerHeight;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: state.when(
          data: (data) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(child: headerWithSafe.heightBox),
                    SliverToBoxAdapter(child: _scrollBody(ref, context, data)),
                    SliverToBoxAdapter(child: context.bottomSafeArea.heightBox),
                  ],
                ),

                _header(
                  ref,
                  context,
                  viewModelProvider,
                  data,
                  headerHeight,
                ).onTap(() {
                  if (data.videoLoad) {
                    ref.read(timerProviderProvider.notifier).pulse(3.seconds);
                  }
                }),
              ],
            );
          },
          error: (e, s) {
            return Center(child: '$e $s'.text.make());
          },
          loading: () {
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
    );
  }

  Widget _header(
    WidgetRef ref,
    BuildContext context,
    MovieDetailVmProvider provider,
    MovieDetailState data,
    double headerHeight,
  ) {
    final timer = ref.watch(timerProviderProvider);
    return SizedBox(
      height: context.safeAreaTop + headerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(color: Colors.black, height: headerHeight),
          Column(
            children: [
              Container(color: Colors.black, height: context.safeAreaTop),

              !data.videoLoad
                  ? _headerBackground(context, data.detail, headerHeight)
                  : _movieVideos(ref, provider, data.videos, headerHeight),
            ],
          ),

          AnimatedOpacity(
            opacity: timer ? 1 : 0,
            duration: 1.seconds,
            child: _headerGradient(headerHeight),
          ),
          AnimatedOpacity(
            opacity: timer ? 1 : 0,
            duration: 1.seconds,
            child: _headerOverlayText(data.detail),
          ),

          _headerBackButton(context),
        ],
      ),
    );
  }

  Widget _headerBackground(
    BuildContext context,
    MovieDetailEntity data,
    double height,
  ) {
    return Container(
      color: Colors.black,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(18),
          topRight: Radius.circular(18),
        ),
        child: SizedBox(
          height: height,
          child: NetworkImageWidget(
            imageUrl: data.backImageUrlString,
            fit: BoxFit.fitHeight,
          ),
        ),
      ),
    );
  }

  Widget _headerGradient(double height) {
    return SizedBox(
      height: height,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.transparent, Colors.black87],
          ),
        ),
      ),
    );
  }

  Widget _headerBackButton(BuildContext context) {
    return Positioned(
      left: 8,
      top: 8,
      child: SafeArea(
        bottom: false,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(100),
          child: Container(
            // color: Colors.grey[800],
            decoration: AppDecorations.glassStyle3,
            child: IconButton(
              visualDensity: VisualDensity.compact,
              onPressed: () {
                context.pop();
              },
              icon: Icon(Icons.arrow_back_ios_new, color: Colors.grey),
            ),
          ),
        ),
      ),
    );
  }

  Widget _headerOverlayText(MovieDetailEntity data) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            data.movieName.text
                .size(30)
                .color(Colors.white)
                .bold
                .make()
                .fittedBox()
                .pOnly(bottom: 4),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: genreChips(data.genres)),
                8.widthBox,
                VStack(crossAlignment: CrossAxisAlignment.end, [
                  ((data.voteAverage * 10).round() / 10).text
                      .color(Colors.white70)
                      .size(16)
                      .make(),
                  StarRatingWidget(
                    rating: data.starRate,
                    max: 5,
                    spacing: 4,
                    filledColor: Colors.red,
                    emptyColor: Colors.white70,
                  ),
                ]).pOnly(bottom: 12),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget genreChips(List<String> genres) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: genres.map((item) {
          return Container(
            margin: const EdgeInsets.only(right: 8),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: AppDecorations.glassStyle,
            child: item.text.size(14).color(Colors.white).make(),
          );
        }).toList(),
      ),
    );
  }

  // MARK: - Body
  Widget _scrollBody(
    WidgetRef ref,
    BuildContext context,
    MovieDetailState data,
  ) {
    final companies = data.detail.productionCompanies;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 제작사
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 12,
                children: companies.map((item) {
                  return _companiesSection(item);
                }).toList(),
              ),
            ),

            // 줄거리
            _movieOverview(data.detail.movieDetailString).pOnly(top: 16),

            // 출연진
            _movieCrews(data.credits).pOnly(top: 16),
          ],
        ),
      ),
    );
  }

  Widget _companiesSection(ProductCompanyEntity item) {
    if (item.logoPath == null) {
      return Container();
    }
    return SizedBox(
      width: 80,
      child: NetworkImageWidget(
        imageUrl: item.logoPath,
        fit: BoxFit.fitWidth,
        color: Colors.white,
      ),
    );
  }

  Widget _movieOverview(String overViewText) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        '줄거리'.text.color(Colors.white).bold.size(20).make(),
        overViewText.text.color(Colors.white70).normal.size(14).make(),
      ],
    );
  }

  Widget _movieCrews(TmdbCreditsEntity credits) {
    return Column(
      spacing: 8,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        '출연진들'.text.bold.size(24).color(Colors.white).make().pOnly(bottom: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 12,
            children: credits.cast.map((i) {
              return SizedBox(
                width: 120,
                child: _movieCrewMember(
                  name: i.name,
                  subTitle: i.characterName,
                  profileUrl: i.profileUrl,
                ),
              );
            }).toList(),
          ),
        ),

        '제작진들'.text.bold.size(24).color(Colors.white).make().pOnly(bottom: 8),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            spacing: 12,
            children: credits.crew.map((i) {
              return SizedBox(
                width: 120,
                child: _movieCrewMember(
                  name: i.name,
                  subTitle: i.job,
                  profileUrl: i.profileUrl,
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _movieCrewMember({
    required String name,
    String? profileUrl,
    required String subTitle,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          NetworkImageWidget(imageUrl: profileUrl),
          Container(
            width: double.infinity,
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(6, 2, 6, 8),
              child: VStack([
                name.text.size(12).bold.color(Colors.white).make(),
                subTitle.text
                    .size(10)
                    .semiBold
                    .maxLines(1)
                    .color(Colors.white)
                    .make(),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _movieVideos(
    WidgetRef ref,
    MovieDetailVmProvider provider,
    List<MovieVideoEntity> videos,
    double height,
  ) {
    if (videos.isEmpty) {
      return const SizedBox.shrink();
    }

    final videoIds = videos.map((e) => e.key).toList();

    return Container(
      color: Colors.black,
      height: height,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(18),
        child: YoutubePlayers(
          ids: videoIds,
          onFinished: () {
            ref.read(provider.notifier).changeVideoLoad(false);
            ref.read(timerProviderProvider.notifier).show();
          },
        ),
      ),
    );
  }
}
