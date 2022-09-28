import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/chat_list_page/conponents/chat_list_item.dart';
import 'package:flutter_carrotmarket/views/pages/chat_list_page/view_model/chat_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatListPage extends ConsumerWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(chatListViewModel);
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return ChatListItem(chatRoom: items[index]);
      },
    );
  }
}
