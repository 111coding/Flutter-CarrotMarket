import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/chat_list_page/conponents/chat_list_item.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return const ChatListItem();
      },
    );
  }
}
