import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'app_database.g.dart';

@Riverpod(keepAlive: true) // keepAlive라 앱 살아있는 동안 유지됨
Future<Database> appDatabase(Ref ref) async {
  final dir = await getDatabasesPath();
  final path = p.join(dir, 'movie_finder.db');

  final db = await openDatabase(
    path,
    version: 1,
    onCreate: (db, version) async {
      await db.execute('''
        CREATE TABLE favorites (
          movie_id TEXT PRIMARY KEY,
          title TEXT NOT NULL,
          poster_path TEXT,
          liked_at INTEGER NOT NULL
        );
      ''');
      await db.execute(
        // 인덱싱
        'CREATE INDEX idx_favorites_liked_at ON favorites(liked_at);',
      );
    },
  );

  ref.onDispose(() => db.close());
  return db;
}
