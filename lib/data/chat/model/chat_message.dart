import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message.freezed.dart';
part 'chat_message.g.dart';

@freezed
class ChatMessage with _$ChatMessage {
  const factory ChatMessage({
    required int idx,
    @ChatMessageTypeConverter() required ChatMessageType messageType,
    required String content,
    required DateTime createAt,
  }) = _ChatMessage;

  factory ChatMessage.fromJson(Map<String, dynamic> json) => _$ChatMessageFromJson(json);
}

enum ChatMessageType {
  senderToOwner("SENDER_TO_PRODUCT_OWNER"),
  ownerToSender("PRODUCT_OWNER_TO_SENDER");

  final String value;
  const ChatMessageType(this.value);
}

class ChatMessageTypeConverter implements JsonConverter<ChatMessageType, String> {
  const ChatMessageTypeConverter();

  @override
  ChatMessageType fromJson(String value) => ChatMessageType.values.where((e) => e.value == value).first;

  @override
  String toJson(ChatMessageType enumValue) => enumValue.value;
}
