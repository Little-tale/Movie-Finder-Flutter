import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_movie.freezed.dart';

@freezed
sealed class FavoriteMovie with _$FavoriteMovie {
  const FavoriteMovie._();

  const factory FavoriteMovie({
    required String movieId,
    required String title,
    String? posterPath,
    required DateTime likedAt,
    required List<int> genreIds,
  }) = _FavoriteMovie;

  factory FavoriteMovie.fromMap(Map<String, Object?> map) => FavoriteMovie(
    movieId: map['movie_id'] as String,
    title: map['title'] as String,
    posterPath: map['poster_path'] as String?,
    likedAt: DateTime.fromMillisecondsSinceEpoch(map['liked_at'] as int),

    // GROUP_CONCAT로 합쳐서 온 "28|12|878" 같은 문자열을 int 리스트로 파싱
    genreIds: ((map['genre_ids'] as String?) ?? '')
        .split('|')
        .where((e) => e.isNotEmpty)
        .map(int.parse)
        .toList(),
  );

  // favorites 테이블 row만
  Map<String, Object?> toMap() => {
    'movie_id': movieId,
    'title': title,
    'poster_path': posterPath,
    'liked_at': likedAt.millisecondsSinceEpoch,
  };
}
