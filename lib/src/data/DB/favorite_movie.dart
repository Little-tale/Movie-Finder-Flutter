import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movie.freezed.dart';

@freezed
sealed class FavoriteMovie with _$FavoriteMovie {
  const FavoriteMovie._(); // 커스텀 메서드/ 팩토리 추가하려면 필요

  const factory FavoriteMovie({
    required String movieId,
    required String title,
    String? posterPath,
    required DateTime likedAt,
  }) = _FavoriteMovie;

  /// DB row(Map) -> FavoriteMovie
  factory FavoriteMovie.fromMap(Map<String, Object?> map) => FavoriteMovie(
    movieId: map['movie_id'] as String,
    title: map['title'] as String,
    posterPath: map['poster_path'] as String?,
    likedAt: DateTime.fromMillisecondsSinceEpoch(map['liked_at'] as int),
  );

  /// FavoriteMovie -> DB row(Map)
  Map<String, Object?> toMap() => {
    'movie_id': movieId,
    'title': title,
    'poster_path': posterPath,
    'liked_at': likedAt.millisecondsSinceEpoch,
  };
}
