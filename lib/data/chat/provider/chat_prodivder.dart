import 'package:flutter_carrotmarket/data/chat/model/chat_room.dart';
import 'package:flutter_carrotmarket/data/chat/repository/chat_repository.dart';
import 'package:riverpod/riverpod.dart';

final chatProvider = StateNotifierProvider<ChatProvider, ChatRoom?>((ref) => ChatProvider(null, ref));

class ChatProvider extends StateNotifier<ChatRoom?> {
  ChatProvider(super.state, this._ref);

  final Ref _ref;

  Future<void> subscribeMessage() async {
    _ref.read(chatRepository).subscribeMessage((newMessage) => state = newMessage);
  }
}
