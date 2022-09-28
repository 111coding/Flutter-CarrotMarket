import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';

class ChatListItem extends StatelessWidget {
  const ChatListItem({super.key});

  void goChat(BuildContext context) {
    Routes.chat.push();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goChat(context),
      child: Container(
        decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5)),
        ),
        height: 100,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              const UserProfileImage(),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(),
                    Text.rich(
                      TextSpan(children: [
                        TextSpan(text: "캐롯 ", style: textTheme().bodyText1),
                        const TextSpan(text: "기장군"),
                        TextSpan(text: " • ${CarrotDateUtils.fromNow(DateTime.now())}"),
                      ]),
                    ),
                    const Spacer(),
                    Text(
                      "팔렸나요?",
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
