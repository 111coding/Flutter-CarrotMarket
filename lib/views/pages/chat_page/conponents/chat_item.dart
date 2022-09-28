import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';
import 'package:intl/intl.dart';
import 'package:flutter_carrotmarket/data/chat/model/chat_message.dart';
import 'package:flutter_carrotmarket/data/chat/model/chat_room.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:flutter_carrotmarket/data/user/provider/user_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatItem extends ConsumerWidget {
  const ChatItem({Key? key, required this.index, required this.chatRoom}) : super(key: key);

  final int index;
  final ChatRoom chatRoom;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final item = chatRoom.messages![index];
    // 내가 보낸 메시지 인지
    final senderUser = item.messageType == ChatMessageType.senderToOwner ? chatRoom.sender : chatRoom.product.user; // 메시지 전송자
    final isMine = (senderUser.idx == ref.watch(userProvider)?.idx); // 메시지 전송자가 나인지
    final beforeItem = index > 0 ? chatRoom.messages![index - 1] : null; // 이전 메시지(프로파일이미지 표시여부 체크용)
    final profileVisible = !(beforeItem?.messageType == item.messageType); //프로파일이미지 표시여부
    return SizedBox(
      width: double.infinity,
      child: isMine ? _myMsg(context, profileVisible, senderUser) : _msg(context, profileVisible, senderUser),
    );
  }

  Widget _myMsg(BuildContext context, bool profileVisible, User user) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Wrap(
            alignment: WrapAlignment.end,
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              _date(),
              eWidth(4),
              Container(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
                padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  chatRoom.messages![index].content,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        eWidth(10),
        profileVisible ? UserProfileImage(user: user) : eWidth(50),
      ],
    );
  }

  Widget _msg(BuildContext context, bool profileVisible, User user) {
    return Row(
      children: [
        profileVisible ? UserProfileImage(user: user) : eWidth(50),
        eWidth(10),
        Expanded(
          child: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 2),
                padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  chatRoom.messages![index].content,
                  style: const TextStyle(color: Colors.black),
                ),
              ),
              eWidth(4),
              _date(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _date() => Text(
        DateFormat("M/d hh:mm").format(chatRoom.messages![index].createAt),
        style: textTheme().subtitle2,
      );
}
