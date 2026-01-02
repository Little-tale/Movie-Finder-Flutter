import 'package:movie_finder/src/data/DB/favorite_movie.dart';
import 'package:sqflite/sqflite.dart';

class FavoriteDb {
  FavoriteDb(this.db);
  final Database db;

  // MARK: Create
  Future<void> insert(FavoriteMovie fav) async {
    await db.insert(
      'favorites',
      fav.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // MARK: Delete
  Future<void> deleteById(String movieId) async {
    await db.delete('favorites', where: 'movie_id = ?', whereArgs: [movieId]);
  }

  // MARK: Read
  Future<bool> exists(String movieId) async {
    final rows = await db.rawQuery(
      'SELECT 1 FROM favorites WHERE movie_id = ? LIMIT 1',
      [movieId],
    );
    return rows.isNotEmpty;
  }

  Future<FavoriteMovie?> getById(String movieId) async {
    final rows = await db.query(
      'favorites',
      where: 'movie_id = ?',
      whereArgs: [movieId],
      limit: 1,
    );

    if (rows.isEmpty) return null;
    return FavoriteMovie.fromMap(rows.first);
  }

  Future<List<FavoriteMovie>> getAll() async {
    final rows = await db.query('favorites', orderBy: 'liked_at DESC');
    return rows.map(FavoriteMovie.fromMap).toList();
  }

  Future<bool> toggle({
    required String movieId,
    required String title,
    String? posterPath,
  }) async {
    final isFav = await exists(movieId);
    if (isFav) {
      await deleteById(movieId);
      return false;
    } else {
      await insert(
        FavoriteMovie(
          movieId: movieId,
          title: title,
          posterPath: posterPath,
          likedAt: DateTime.now(),
        ),
      );
      return true;
    }
  }
}
