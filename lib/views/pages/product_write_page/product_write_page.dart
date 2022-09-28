import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_body.dart';

class ProductWritePage extends StatelessWidget {
  const ProductWritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductWriteAppBar(),
      body: const ProductWriteBody(),
    );
  }
}
