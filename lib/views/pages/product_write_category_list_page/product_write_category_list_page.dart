import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_category_list_page/components/product_write_category_list_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_category_list_page/components/product_write_category_list_body.dart';

class ProductWriteCategoryListPage extends StatelessWidget {
  const ProductWriteCategoryListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductWriteCategoryListAppBar(),
      body: const ProductWriteCategoryListBody(),
    );
  }
}
