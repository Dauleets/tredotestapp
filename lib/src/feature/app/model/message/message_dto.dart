// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_dto.freezed.dart';

part 'message_dto.g.dart';

@freezed
class MessageDTO with _$MessageDTO {
  const factory MessageDTO({
 final String? id,
  final String? senderId,
  final String? text,
  final DateTime? timestamp,
  }) = _MessageDTO;

  factory MessageDTO.fromJson(Map<String, dynamic> json) =>
      _$MessageDTOFromJson(json);
}
