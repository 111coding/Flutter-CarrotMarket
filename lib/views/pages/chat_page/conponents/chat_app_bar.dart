import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

import 'package:flutter_carrotmarket/data/user/provider/user_provider.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/view_model/chat_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ChatAppBar extends AppBar implements PreferredSizeWidget {
  ChatAppBar({super.key});

  @override
  Widget? get title => Consumer(
        builder: (context, ref, child) {
          final chat = ref.watch(chatViewModel);

          final targetUser = chat?.sender.idx == ref.watch(userProvider)?.idx ? chat?.product.user : chat?.sender;
          return Text("${targetUser?.nickname}");
        },
      );

  @override
  bool? get centerTitle => true;

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
