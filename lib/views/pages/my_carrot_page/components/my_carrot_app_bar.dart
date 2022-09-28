import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

class MyCarrotAppBar extends AppBar implements PreferredSizeWidget {
  MyCarrotAppBar({super.key});

  @override
  Widget? get title => const Text('나의 당근');

  @override
  List<Widget>? get actions => [
        IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
      ];

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
