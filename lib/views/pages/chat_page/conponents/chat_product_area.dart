import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatProductArea extends ConsumerWidget {
  const ChatProductArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      padding: hPadding(),
      height: 80,
      width: MediaQuery.of(context).size.width, // stack에 있어서 double.infinity 불가!
      child: Column(
        children: [
          Expanded(
              child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("자전거", style: textTheme().headline2),
                  eHeight(2),
                  Text("120,000원", style: textTheme().headline2),
                ],
              ),
            ],
          )),
          const GreyLine(margin: 0),
        ],
      ),
    );
  }
}
