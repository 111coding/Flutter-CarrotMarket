import 'package:flutter_carrotmarket/data/chat/model/chat_room.dart';
import 'package:flutter_carrotmarket/data/chat/provider/chat_prodivder.dart';
import 'package:flutter_carrotmarket/data/chat/repository/chat_repository.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:flutter_carrotmarket/data/user/provider/user_provider.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/view_model/chat_view_model.dart';
import 'package:riverpod/riverpod.dart';

final chatListViewModel =
    StateNotifierProvider<ChatListViewModel, List<ChatRoom>>((ref) {
  final viewModel = ChatListViewModel([], ref);
  ref.listen<ChatRoom?>(chatProvider, (previous, next) {
    if (next != null) {
      viewModel.messageCallback(next);
    }
  });
  return viewModel..fetchRoomList();
});

class ChatListViewModel extends StateNotifier<List<ChatRoom>> {
  ChatListViewModel(super.state, this._ref);

  final Ref _ref;

  Future<void> fetchRoomList() async {
    final result = await _ref.read(chatRepository).fetchRoomList();
    if (result != null) {
      state = result;
    }
  }

  Future<ChatRoomMakeResult> makeRoom({required Product product}) async {
    if (state.where((e) => e.product.id == product.id).isNotEmpty) {
      return ChatRoomMakeResult.exist;
    }

    if (product.user?.id == _ref.read(userProvider)?.id) {
      return ChatRoomMakeResult.myProduct;
    }
    final result =
        await _ref.read(chatRepository).makeRoom(productIdx: product.id);
    if (result != null) {
      messageCallback(result);
      _ref.read(chatRoomIdxProdiver).idx = result.roomId;
      return ChatRoomMakeResult.success;
    }
    return ChatRoomMakeResult.fail;
  }

  // void sendMessage({required int roomid, required String content}) => _ref.read(chatRepository).sendMessage(roomIdx: roomid, content: content);

  void messageCallback(ChatRoom newMessage) {
    state = [
      newMessage,
      ...state.where((e) => e.roomId != newMessage.roomId).toList()
    ];
  }
}

enum ChatRoomMakeResult {
  success("성공"),
  fail("다시 시도해 주세요"),
  exist("이미 존재하는 채팅방입니다"),
  myProduct("자기 자신에게는 채팅할 수 없습니다");

  final String message;
  const ChatRoomMakeResult(this.message);
}
