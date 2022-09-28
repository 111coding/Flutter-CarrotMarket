import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

class ChatListAppBar extends AppBar implements PreferredSizeWidget {
  ChatListAppBar({super.key});

  @override
  Widget? get title => const Text('채팅');

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
