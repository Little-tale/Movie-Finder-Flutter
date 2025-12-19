import 'package:freezed_annotation/freezed_annotation.dart';

part 'e_simple_movie_entity.freezed.dart';

@freezed
sealed class SimpleMovieEntity with _$SimpleMovieEntity {
  factory SimpleMovieEntity({
    required int id,
    required String title,
    DateTime? releaseDate,
    String? posterUrl,
    required double rating,
  }) = _SimpleMovieEntity;
}
