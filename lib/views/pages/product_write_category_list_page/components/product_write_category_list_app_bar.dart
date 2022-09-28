import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

class ProductWriteCategoryListAppBar extends AppBar implements PreferredSizeWidget {
  ProductWriteCategoryListAppBar({super.key});

  @override
  Widget? get title => const Text('카테고리 선택');

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
