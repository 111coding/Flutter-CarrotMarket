import 'package:flutter_carrotmarket/data/chat/model/chat_message.dart';
import 'package:flutter_carrotmarket/data/chat/model/chat_product.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';

class ChatRoom {
  final int roomId; // 필드 이름을 camelCase로 수정
  final ChatProduct product;
  final User sender;
  final DateTime createdAt;
  final List<ChatMessage>? messages;

  // 생성자
  const ChatRoom({
    required this.roomId,
    required this.product,
    required this.sender,
    required this.createdAt,
    this.messages,
  });

  // JSON에서 ChatRoom 객체 생성
  factory ChatRoom.fromJson(Map<String, dynamic> json) {
    return ChatRoom(
      roomId: json['roomId'],
      product:
          ChatProduct.fromJson(json['product']), // ChatProduct 객체를 생성하는 메서드
      sender: User.fromJson(json['sender']), // User 객체를 생성하는 메서드
      createdAt: DateTime.parse(json['createdAt']),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((message) => ChatMessage.fromJson(message))
          .toList(), // ChatMessage 객체들을 리스트로 변환
    );
  }

  // ChatRoom 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'roomId': roomId,
      'product': product.toJson(), // ChatProduct 객체를 JSON으로 변환
      'sender': sender.toJson(), // User 객체를 JSON으로 변환
      'createdAt': createdAt.toIso8601String(),
      'messages': messages
          ?.map((message) => message.toJson())
          .toList(), // ChatMessage 객체들을 JSON으로 변환
    };
  }

  // copyWith 메서드
  ChatRoom copyWith({
    int? roomId,
    ChatProduct? product,
    User? sender,
    DateTime? createdAt,
    List<ChatMessage>? messages,
  }) {
    return ChatRoom(
      roomId: roomId ?? this.roomId,
      product: product ?? this.product,
      sender: sender ?? this.sender,
      createdAt: createdAt ?? this.createdAt,
      messages: messages ?? this.messages,
    );
  }
}
