import 'package:movie_finder/src/data/db/favorite_movie.dart';
import 'package:sqflite/sqflite.dart';

class FavoriteDb {
  FavoriteDb(this.db);
  final Database db;

  // MARK: Create
  Future<void> insert(FavoriteMovie fav) async {
    await db.transaction((txn) async {
      // 1) favorites 테이블 저장
      await txn.insert(
        'favorites',
        fav.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      // 2) 장르 매핑 테이블 갱신
      await txn.delete(
        'favorite_genres',
        where: 'movie_id = ?',
        whereArgs: [fav.movieId],
      );
      for (final g in fav.genreIds) {
        await txn.insert('favorite_genres', {
          'movie_id': fav.movieId,
          'genre_id': g,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
      }
    });
  }

  // MARK: Delete
  Future<void> deleteById(String movieId) async {
    await db.transaction((txn) async {
      await txn.delete(
        'favorite_genres',
        where: 'movie_id = ?',
        whereArgs: [movieId],
      );
      await txn.delete(
        'favorites',
        where: 'movie_id = ?',
        whereArgs: [movieId],
      );
    });
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
    final rows = await db.rawQuery(
      '''
    SELECT f.movie_id, f.title, f.poster_path, f.liked_at,
           COALESCE(GROUP_CONCAT(g.genre_id, '|'), '') AS genre_ids
    FROM favorites f
    LEFT JOIN favorite_genres g ON g.movie_id = f.movie_id
    WHERE f.movie_id = ?
    GROUP BY f.movie_id
    LIMIT 1
  ''',
      [movieId],
    );

    if (rows.isEmpty) return null;
    return FavoriteMovie.fromMap(rows.first);
  }

  Future<List<FavoriteMovie>> getAll() async {
    final rows = await db.rawQuery('''
    SELECT f.movie_id, f.title, f.poster_path, f.liked_at,
           COALESCE(GROUP_CONCAT(g.genre_id, '|'), '') AS genre_ids
    FROM favorites f
    LEFT JOIN favorite_genres g ON g.movie_id = f.movie_id
    GROUP BY f.movie_id
    ORDER BY f.liked_at DESC
  ''');
    return rows.map(FavoriteMovie.fromMap).toList();
  }

  Future<bool> toggle({
    required String movieId,
    required String title,
    String? posterPath,
    required List<int> genreIds,
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
          genreIds: genreIds,
        ),
      );
      return true;
    }
  }

  Future<List<FavoriteMovie>> getByGenreId(int genreId) async {
    final rows = await db.rawQuery(
      '''
    SELECT f.movie_id, f.title, f.poster_path, f.liked_at,
           COALESCE(GROUP_CONCAT(g2.genre_id, '|'), '') AS genre_ids
    FROM favorites f
    INNER JOIN favorite_genres g ON g.movie_id = f.movie_id
    LEFT JOIN favorite_genres g2 ON g2.movie_id = f.movie_id
    WHERE g.genre_id = ?
    GROUP BY f.movie_id
    ORDER BY f.liked_at DESC
  ''',
      [genreId],
    );

    return rows.map(FavoriteMovie.fromMap).toList();
  }
}
