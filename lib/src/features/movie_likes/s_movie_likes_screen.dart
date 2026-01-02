import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie_finder/src/data/DB/DAO/favorite_db.dart';
import 'package:movie_finder/src/data/DB/DAO/favorite_provider.dart';
import 'package:movie_finder/src/data/DB/favorite_movie.dart';
import 'package:velocity_x/velocity_x.dart';

class MovieLikesScreen extends ConsumerStatefulWidget {
  const MovieLikesScreen({super.key});

  @override
  ConsumerState<MovieLikesScreen> createState() => _MovieLikesScreenState();
}

class _MovieLikesScreenState extends ConsumerState<MovieLikesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('좋아요')),
      body: FutureBuilder<FavoriteDb>(
        future: ref.watch(favoriteDbProvider.future),
        builder: (context, snapShot) {
          if (snapShot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapShot.hasError) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: 'Error: ${snapShot.error}'.text.bold.size(16).make(),
            );
          }

          final dao = snapShot.data!;
          return FutureBuilder<List<FavoriteMovie>>(
            future: dao.getAll(),
            builder: (context, snap) {
              if (snap.connectionState != ConnectionState.done) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snap.hasError) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: 'Error: ${snap.error}'.text.bold.size(16).make(),
                );
              }

              final items = snap.data ?? [];
              if (items.isEmpty) {
                return Center(child: '아직 좋아요한 영화가 없어요'.text.make());
              }

              return ListView.separated(
                itemCount: items.length,
                separatorBuilder: (_, __) => const Divider(height: 1),
                itemBuilder: (context, i) {
                  final m = items[i];
                  return ListTile(
                    leading: const SizedBox(
                      width: 48,
                      child: Icon(Icons.movie),
                    ),
                    title: Text(m.title),
                    subtitle: Text('likedAt: ${m.likedAt}'),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () async {
                        await dao.deleteById(m.movieId);
                        setState(() {});
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
