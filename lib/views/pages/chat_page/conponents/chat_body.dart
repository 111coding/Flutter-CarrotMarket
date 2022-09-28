import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_input_area.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_item.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_product_area.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/view_model/chat_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatBody extends ConsumerWidget {
  const ChatBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollCtrl = ScrollController();

    // 위젯이 다 그려지고난 후 제일 아래로 스크롤(채팅 입력 시)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollCtrl.jumpTo(scrollCtrl.position.maxScrollExtent);
    });
    final room = ref.watch(chatViewModel);
    final chatList = room?.messages ?? [];

    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).padding.top,
          child: const ChatProductArea(),
        ),
        ListView.separated(
          itemCount: chatList.length,
          controller: scrollCtrl,
          itemBuilder: (context, index) => ChatItem(index: index, chatRoom: room!),
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: MediaQuery.of(context).padding.top + 10 + 80, // ChatProductArea height
          ),
          separatorBuilder: (context, index) => eHeight(10),
        ),
        ChatInputArea(
          send: (v) => ref.read(chatViewModel.notifier).sendMessage(content: v),
        ),
      ],
    );
  }
}
