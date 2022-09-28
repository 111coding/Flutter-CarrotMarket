import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/components/product_search_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/components/product_search_body.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductSearchPage extends ConsumerWidget {
  const ProductSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: ProductSearchAppBar(),
      body: const ProductSearchBody(),
    );
  }
}
