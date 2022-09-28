import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_item.dart';

class ProductSearchListView extends StatelessWidget {
  const ProductSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => const ProductItem(),
      separatorBuilder: (context, index) => const GreyLine(),
      itemCount: 20,
    );
  }
}
