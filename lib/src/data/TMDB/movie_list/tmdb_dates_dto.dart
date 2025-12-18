import 'package:freezed_annotation/freezed_annotation.dart';

part 'tmdb_dates_dto.freezed.dart';
part 'tmdb_dates_dto.g.dart';

@freezed
abstract class TmdbDatesDto with _$TmdbDatesDto {
  factory TmdbDatesDto({required DateTime maximum, required DateTime minimum}) =
      _TmdbDatesDto;

  factory TmdbDatesDto.fromJson(Map<String, dynamic> json) =>
      _$TmdbDatesDtoFromJson(json);
}
