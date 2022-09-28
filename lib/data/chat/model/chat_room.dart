import 'package:flutter_carrotmarket/data/chat/model/chat_message.dart';
import 'package:flutter_carrotmarket/data/chat/model/chat_product.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_room.freezed.dart';
part 'chat_room.g.dart';

@freezed
class ChatRoom with _$ChatRoom {
  const factory ChatRoom({
    required int roomIdx,
    required ChatProduct product,
    required User sender,
    required DateTime createAt,
    List<ChatMessage>? messages,
  }) = _ChatRoom;

  factory ChatRoom.fromJson(Map<String, dynamic> json) => _$ChatRoomFromJson(json);
}
