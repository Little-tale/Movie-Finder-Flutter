import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_server_check.freezed.dart';
part 'dto_server_check.g.dart';

@freezed
abstract class TmdbServerCheckDTO with _$TmdbServerCheckDTO {
  const factory TmdbServerCheckDTO({required bool success}) =
      _TmdbServerCheckDTO;

  factory TmdbServerCheckDTO.fromJson(Map<String, dynamic> json) =>
      _$TmdbServerCheckDTOFromJson(json);
}
