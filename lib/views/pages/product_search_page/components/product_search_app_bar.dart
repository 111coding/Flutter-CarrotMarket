import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/components/product_search_text_field.dart';

class ProductSearchAppBar extends AppBar with PreferredSizeWidget {
  ProductSearchAppBar({super.key});

  @override
  List<Widget>? get actions => [
        const ProductSearchTextField(),
      ];

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
