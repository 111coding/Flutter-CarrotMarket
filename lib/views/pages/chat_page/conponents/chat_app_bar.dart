import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

class ChatAppBar extends AppBar implements PreferredSizeWidget {
  ChatAppBar({super.key});

  @override
  Widget? get title => const Text("김나박이");

  @override
  bool? get centerTitle => true;

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
