// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatMessage _$$_ChatMessageFromJson(Map<String, dynamic> json) =>
    _$_ChatMessage(
      idx: json['idx'] as int,
      messageType: const ChatMessageTypeConverter()
          .fromJson(json['messageType'] as String),
      content: json['content'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_ChatMessageToJson(_$_ChatMessage instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'messageType':
          const ChatMessageTypeConverter().toJson(instance.messageType),
      'content': instance.content,
      'createAt': instance.createAt.toIso8601String(),
    };
