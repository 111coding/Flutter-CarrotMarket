import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/view_model/chat_view_model.dart';
import 'package:intl/intl.dart';

class ChatProductArea extends ConsumerWidget {
  const ChatProductArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(chatViewModel)?.product;

    return product == null
        ? eWidth(0)
        : Container(
            padding: hPadding(),
            height: 80,
            width: MediaQuery.of(context).size.width, // stack에 있어서!
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    // ProductThumbIamge(thumbnail: product.thumbnail, dimension: 50),
                    // eWidth(10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.title, style: textTheme().headline2),
                        eHeight(2),
                        Text("${NumberFormat("#,###").format(product.price)}원", style: textTheme().headline2),
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
