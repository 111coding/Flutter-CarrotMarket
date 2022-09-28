import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/chat_list_page/chat_list_page.dart';
import 'package:flutter_carrotmarket/views/pages/my_carrot_page/my_carrot_page.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/product_page.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      index: selectedIndex,
      children: const [
        ProductPage(),
        ChatListPage(),
        MyCarrotPage(),
      ],
    );
  }
}
