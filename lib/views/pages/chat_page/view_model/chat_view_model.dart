import 'package:flutter_carrotmarket/data/chat/model/chat_room.dart';
import 'package:flutter_carrotmarket/data/chat/provider/chat_prodivder.dart';
import 'package:flutter_carrotmarket/data/chat/repository/chat_repository.dart';
import 'package:riverpod/riverpod.dart';

final chatRoomIdxProdiver = Provider((ref) => ChatRoomIdxProdiver());

class ChatRoomIdxProdiver {
  int idx = -1;
}

final chatViewModel = StateNotifierProvider.autoDispose<ChatViewModel, ChatRoom?>((ref) {
  final viewModel = ChatViewModel(null, ref);
  ref.listen<ChatRoom?>(chatProvider, (previous, next) {
    if (next != null) {
      viewModel.messageCallback(next);
    }
  });
  return viewModel..fetchDetail();
});

class ChatViewModel extends StateNotifier<ChatRoom?> {
  ChatViewModel(super.state, this._ref);

  final Ref _ref;

  Future<void> fetchDetail() async {
    final result = await _ref.read(chatRepository).fetchDetail(
          roomIdx: _ref.read(chatRoomIdxProdiver).idx,
        );
    if (result != null) {
      state = result;
    }
  }

  void sendMessage({required String content}) => _ref.read(chatRepository).sendMessage(
        roomIdx: _ref.read(chatRoomIdxProdiver).idx,
        content: content,
      );

  void messageCallback(ChatRoom newMessage) {
    if (newMessage.roomIdx == state?.roomIdx) {
      final beforeList = state?.messages ?? [];
      final newMsg = newMessage.messages == null ? [] : [newMessage.messages!.first];
      state = state?.copyWith(messages: [...beforeList, ...newMsg]);
    }
  }
}
