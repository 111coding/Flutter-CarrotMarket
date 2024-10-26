class ChatMessage {
  final int id;
  final ChatMessageType messageType;
  final String content;
  final DateTime createdAt;

  // 생성자
  const ChatMessage({
    required this.id,
    required this.messageType,
    required this.content,
    required this.createdAt,
  });

  // JSON에서 ChatMessage 객체 생성
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      id: json['id'],
      messageType: ChatMessageTypeConverter().fromJson(json['messageType']),
      content: json['content'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  // ChatMessage 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'messageType': ChatMessageTypeConverter().toJson(messageType),
      'content': content,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}

enum ChatMessageType {
  senderToOwner("SENDER_TO_PRODUCT_OWNER"),
  ownerToSender("PRODUCT_OWNER_TO_SENDER");

  final String value;

  const ChatMessageType(this.value);
}

class ChatMessageTypeConverter {
  const ChatMessageTypeConverter();

  // JSON에서 문자열을 ChatMessageType으로 변환
  ChatMessageType fromJson(String value) {
    return ChatMessageType.values.firstWhere((e) => e.value == value);
  }

  // ChatMessageType을 JSON 문자열로 변환
  String toJson(ChatMessageType enumValue) {
    return enumValue.value;
  }
}
