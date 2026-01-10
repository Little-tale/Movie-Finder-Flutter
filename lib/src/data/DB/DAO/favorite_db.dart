import 'package:movie_finder/src/data/db/favorite_movie.dart';
import 'package:sqflite/sqflite.dart';

class FavoriteDb {
  FavoriteDb(this.db);
  final Database db;

  final _favorites = 'favorites';
  final _favoriteGenres = 'favorite_genres';
  final movieId = 'movie_id';
  final genreId = 'genre_id';

  // MARK: Create
  Future<void> insert(FavoriteMovie fav) async {
    await db.transaction((txn) async {
      // 1) favorites 테이블 저장
      await txn.insert(
        _favorites,
        fav.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace,
      );

      // 2) 장르 매핑 테이블 갱신
      await txn.delete(
        _favoriteGenres,
        where: '$movieId = ?',
        whereArgs: [fav.movieId],
      );
      for (final g in fav.genreIds) {
        await txn.insert(_favoriteGenres, {
          movieId: fav.movieId,
          genreId: g,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
      }
    });
  }

  // MARK: Delete
  Future<void> deleteById(String movieId) async {
    await db.transaction((txn) async {
      await txn.delete(
        _favoriteGenres,
        where: '${this.movieId} = ?',
        whereArgs: [movieId],
      );
      await txn.delete(
        _favorites,
        where: '${this.movieId} = ?',
        whereArgs: [movieId],
      );
    });
  }

  // MARK: Read
  Future<bool> exists(String movieId) async {
    final rows = await db.rawQuery(
      'SELECT 1 FROM $_favorites WHERE ${this.movieId} = ? LIMIT 1',
      [movieId],
    );
    return rows.isNotEmpty;
  }

  Future<FavoriteMovie?> getById(String movieId) async {
    const sql = '''
    SELECT
      f.movie_id,
      f.title,
      f.poster_path,
      f.liked_at,
      COALESCE(GROUP_CONCAT(g.genre_id, '|'), '') AS genre_ids
    FROM favorites AS f
    LEFT JOIN favorite_genres AS g
      ON g.movie_id = f.movie_id
    WHERE f.movie_id = ?
    GROUP BY f.movie_id
    LIMIT 1
  ''';

    final rows = await db.rawQuery(sql, [movieId]);
    if (rows.isEmpty) return null;
    return FavoriteMovie.fromMap(rows.first);
  }

  Future<List<FavoriteMovie>> getAll() async {
    const sql = '''
    SELECT
      f.movie_id,
      f.title,
      f.poster_path,
      f.liked_at,
      COALESCE(GROUP_CONCAT(g.genre_id, '|'), '') AS genre_ids
    FROM favorites AS f
    LEFT JOIN favorite_genres AS g
      ON g.movie_id = f.movie_id
    GROUP BY f.movie_id
    ORDER BY f.liked_at DESC
  ''';

    final rows = await db.rawQuery(sql);
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
    const sql = '''
    SELECT
      f.movie_id,
      f.title,
      f.poster_path,
      f.liked_at,
      COALESCE(GROUP_CONCAT(g.genre_id, '|'), '') AS genre_ids

    FROM favorites AS f

    LEFT JOIN favorite_genres AS g
      ON g.movie_id = f.movie_id
    WHERE EXISTS (
      SELECT 1
      FROM favorite_genres AS fg
      WHERE fg.movie_id = f.movie_id
        AND fg.genre_id = ?
    )
    GROUP BY f.movie_id
    ORDER BY f.liked_at DESC
  ''';

    final rows = await db.rawQuery(sql, [genreId]);
    return rows.map(FavoriteMovie.fromMap).toList();
  }
}
