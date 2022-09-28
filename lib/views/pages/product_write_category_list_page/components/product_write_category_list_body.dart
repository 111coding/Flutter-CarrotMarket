import 'package:flutter/material.dart';

import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_category_list_page/components/product_write_category_list_item.dart';

class ProductWriteCategoryListBody extends StatelessWidget {
  const ProductWriteCategoryListBody({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ["디지털/가전", "완구", "의류"];
    return ListView.separated(
      itemBuilder: (context, index) => ProductWriteCategoryListItem(
        category: categories[index],
      ),
      separatorBuilder: (context, index) => const GreyLine(),
      itemCount: categories.length,
    );
  }
}
