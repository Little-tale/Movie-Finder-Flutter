import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/src/common/ui/w_top_rated_poster_widget.dart';
import 'package:movie_finder/src/features/movie_list/vm_movie_list_view_model.dart';
import 'package:velocity_x/velocity_x.dart';

class TopRatedSection extends ConsumerWidget {
  const TopRatedSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(
      movieListVmProvider.select(
        (item) => item.whenData((s) => s.topRatedItems),
      ),
    );

    return state.when(
      data: (data) {
        return SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              'TOP RATED'.text
                  .size(24)
                  .bold
                  .make()
                  .pOnly(left: 16, bottom: 8, top: 16),

              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.items.length,
                  itemBuilder: (context, index) {
                    return TopRatedPosterWidget(
                      rating: index + 1,
                      postUrlString: data.items[index].posterUrl,
                      posterH: 200,
                      posterW: 140,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
      error: (e, _) {
        return SliverToBoxAdapter(child: Text('$e'));
      },
      loading: () => const SliverToBoxAdapter(
        child: SizedBox(
          height: 180,
          child: Center(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
