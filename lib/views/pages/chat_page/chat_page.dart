import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_body.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatPage extends ConsumerWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // text form unfocus
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: ChatAppBar(),
        extendBodyBehindAppBar: true,
        body: const ChatBody(),
      ),
    );
  }
}
