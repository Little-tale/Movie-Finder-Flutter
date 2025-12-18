import 'package:freezed_annotation/freezed_annotation.dart';

/// "YYYY-MM-DD" / "" / null 모두 안전하게 처리
class NullableDateTimeConverter implements JsonConverter<DateTime?, String?> {
  const NullableDateTimeConverter();

  @override
  DateTime? fromJson(String? json) {
    if (json == null) return null;
    final s = json.trim();
    if (s.isEmpty) return null;
    return DateTime.tryParse(s);
  }

  @override
  String? toJson(DateTime? object) {
    if (object == null) return null;
    // TMDB 스타일에 맞춰 날짜만 내보내기
    final y = object.year.toString().padLeft(4, '0');
    final m = object.month.toString().padLeft(2, '0');
    final d = object.day.toString().padLeft(2, '0');
    return '$y-$m-$d';
  }
}
