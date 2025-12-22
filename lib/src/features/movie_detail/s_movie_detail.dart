import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_finder/src/common/app/app_size.dart';
import 'package:movie_finder/src/common/ui/w_network_image_.dart';
import 'package:movie_finder/src/common/ui/w_star_rating.dart';
import 'package:movie_finder/src/data/Entity/detail/movie_detail_entity.dart';
import 'package:movie_finder/src/data/Entity/product_company_entity/e_product_company_entity.dart';
import 'package:movie_finder/src/features/movie_detail/vm_movie_detail_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieDetailScreen extends ConsumerWidget {
  const MovieDetailScreen(this.movieID, {super.key});

  final int movieID;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(movieDetailVmProvider(movieID));
    final headerHeight = context.blockSizeVertical * 29;
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
                    SliverToBoxAdapter(child: _scrollBody(context, data)),
                  ],
                ),

                _header(context, data, headerHeight),
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
    BuildContext context,
    MovieDetailEntity data,
    double headerHeight,
  ) {
    return SizedBox(
      height: context.safeAreaTop + headerHeight,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Column(
            children: [
              Container(color: Colors.black, height: context.safeAreaTop),
              _headerBackground(context, data, headerHeight),
            ],
          ),
          _headerGradient(headerHeight),
          _headerOverlayText(data),
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
            color: Colors.grey[800],
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
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(999),
              border: Border.all(color: Colors.white.withValues(alpha: 0.18)),
            ),
            child: item.text.size(14).color(Colors.white).make(),
          );
        }).toList(),
      ),
    );
  }

  Widget _scrollBody(BuildContext context, MovieDetailEntity data) {
    final companies = data.productionCompanies;

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
            _movieOverview(data.movieDetailString).pOnly(top: 16),
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
}
