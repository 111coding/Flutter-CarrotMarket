import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

class ProductWriteAppBar extends AppBar implements PreferredSizeWidget {
  ProductWriteAppBar({super.key});

  @override
  Widget? get title => const Text("중고거래 글쓰기");

  @override
  List<Widget>? get actions => [
        TextButton(
          onPressed: () {},
          child: const Text("완료"),
        ),
      ];

  @override
  bool? get centerTitle => true;

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
