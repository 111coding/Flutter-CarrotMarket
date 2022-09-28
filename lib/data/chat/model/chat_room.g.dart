// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatRoom _$$_ChatRoomFromJson(Map<String, dynamic> json) => _$_ChatRoom(
      roomIdx: json['roomIdx'] as int,
      product: ChatProduct.fromJson(json['product'] as Map<String, dynamic>),
      sender: User.fromJson(json['sender'] as Map<String, dynamic>),
      createAt: DateTime.parse(json['createAt'] as String),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => ChatMessage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChatRoomToJson(_$_ChatRoom instance) =>
    <String, dynamic>{
      'roomIdx': instance.roomIdx,
      'product': instance.product,
      'sender': instance.sender,
      'createAt': instance.createAt.toIso8601String(),
      'messages': instance.messages,
    };
