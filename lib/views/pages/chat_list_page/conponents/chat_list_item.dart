import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';
import 'package:flutter_carrotmarket/data/chat/model/chat_room.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/view_model/chat_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatListItem extends ConsumerWidget {
  const ChatListItem({super.key, required this.chatRoom});

  final ChatRoom chatRoom;

  void goChat(BuildContext context, WidgetRef ref) {
    ref.read(chatRoomIdxProdiver).idx = chatRoom.roomIdx;
    Routes.chat.push();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => goChat(context, ref),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
        ),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              UserProfileImage(user: chatRoom.product.user),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(text: "${chatRoom.sender.nickname} ", style: textTheme().bodyText1),
                        TextSpan(text: chatRoom.product.address.displayName),
                        if (chatRoom.messages?.isNotEmpty ?? false) TextSpan(text: " • ${CarrotDateUtils.fromNow(chatRoom.messages!.first.createAt)}"),
                      ]),
                    ),
                    const Spacer(),
                    Text(
                      (chatRoom.messages?.isEmpty ?? true) ? '' : chatRoom.messages!.first.content,
                      style: textTheme().bodyText1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
