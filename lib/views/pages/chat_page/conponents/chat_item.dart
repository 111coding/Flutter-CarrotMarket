import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';
import 'package:intl/intl.dart';

class ChatItem extends StatelessWidget {
  const ChatItem({Key? key, required this.msg, required this.isMine}) : super(key: key);

  final String msg;
  final bool isMine;

  @override
  Widget build(BuildContext context) {
    // 내가 보낸 메시지 인지
    final senderUser = isMine ? "캐롯" : "김나박"; // 메시지 전송자
    return SizedBox(
      width: double.infinity,
      child: isMine ? _myMsg(context, senderUser) : _msg(context, senderUser),
    );
  }

  Widget _myMsg(BuildContext context, String user) {
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
                  msg,
                  style: const TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        eWidth(10),
        const UserProfileImage(),
      ],
    );
  }

  Widget _msg(BuildContext context, String user) {
    return Row(
      children: [
        const UserProfileImage(),
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
                  msg,
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
        DateFormat("M/d hh:mm").format(DateTime.now()),
        style: textTheme().subtitle2,
      );
}
