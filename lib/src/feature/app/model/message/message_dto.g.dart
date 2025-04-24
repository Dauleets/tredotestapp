// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MessageDTOImpl _$$MessageDTOImplFromJson(Map<String, dynamic> json) =>
    _$MessageDTOImpl(
      id: json['id'] as String?,
      senderId: json['senderId'] as String?,
      text: json['text'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$$MessageDTOImplToJson(_$MessageDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'senderId': instance.senderId,
      'text': instance.text,
      'timestamp': instance.timestamp?.toIso8601String(),
    };
