import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_body.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_bottom.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductDetailBody(),
      bottomSheet: ProductDetailBottom(),
    );
  }
}
