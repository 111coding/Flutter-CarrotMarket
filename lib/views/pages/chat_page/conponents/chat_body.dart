import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_input_area.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_item.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/conponents/chat_product_area.dart';

class ChatBody extends StatefulWidget {
  const ChatBody({super.key});

  @override
  State<StatefulWidget> createState() => ChatBodyState();
}

class ChatBodyState extends State<ChatBody> {
  List<String> messages = ["안녕하세요", "네 안녕하세요"];
  List<bool> mine = [true, false];

  @override
  Widget build(BuildContext context) {
    final scrollCtrl = ScrollController();

    // 위젯이 다 그려지고난 후 제일 아래로 스크롤(채팅 입력 시)
    WidgetsBinding.instance.addPostFrameCallback((_) {
      scrollCtrl.jumpTo(scrollCtrl.position.maxScrollExtent);
    });

    return Stack(
      children: [
        Positioned(
          top: MediaQuery.of(context).padding.top,
          child: const ChatProductArea(),
        ),
        ListView.separated(
          itemCount: messages.length,
          controller: scrollCtrl,
          itemBuilder: (context, index) => ChatItem(
            isMine: mine[index],
            msg: messages[index],
          ),
          padding: EdgeInsets.symmetric(
            horizontal: kHorizontalPadding,
            vertical: MediaQuery.of(context).padding.top + 10 + 80, // ChatProductArea height
          ),
          separatorBuilder: (context, index) => eHeight(10),
        ),
        ChatInputArea(
          send: (v) {
            messages.add(v);
            mine.add(true);
            setState(() {});
          },
        ),
      ],
    );
  }
}
