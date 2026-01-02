import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true)
Future<Database> appDatabase(Ref ref) async {
  final dir = await getDatabasesPath();
  final path = p.join(dir, 'movie_finder.db');

  final db = await openDatabase(
    path,
    version: 1,
    onConfigure: (db) async {
      // FK 제약 / ON DELETE CASCADE 활성화
      await db.execute('PRAGMA foreign_keys = ON');
    },
    onCreate: (db, version) async {
      // MARK: favorites
      await db.execute('''
        CREATE TABLE favorites (
          movie_id TEXT PRIMARY KEY,
          title TEXT NOT NULL,
          poster_path TEXT,
          liked_at INTEGER NOT NULL
        );
      ''');
      // MARK: favorite_genres
      await db.execute('''
        CREATE TABLE favorite_genres (
          movie_id TEXT NOT NULL,
          genre_id INTEGER NOT NULL,
          PRIMARY KEY (movie_id, genre_id),
          FOREIGN KEY (movie_id) REFERENCES favorites(movie_id) ON DELETE CASCADE
        );
      ''');
      await db.execute(
        'CREATE INDEX idx_favorite_genres_genre_id ON favorite_genres(genre_id);',
      );
      await db.execute(
        'CREATE INDEX idx_favorites_liked_at ON favorites(liked_at);',
      );
    },
  );

  ref.onDispose(db.close);
  return db;
}
