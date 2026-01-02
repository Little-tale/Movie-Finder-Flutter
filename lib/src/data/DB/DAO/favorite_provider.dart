import 'package:movie_finder/src/data/DB/DAO/app_database.dart';
import 'package:movie_finder/src/data/DB/DAO/favorite_db.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sqflite/sqflite.dart';

part 'favorite_provider.g.dart';

@Riverpod(keepAlive: true)
Future<FavoriteDb> favoriteDb(Ref ref) async {
  final Database db = await ref.watch(appDatabaseProvider.future);
  return FavoriteDb(db);
}
