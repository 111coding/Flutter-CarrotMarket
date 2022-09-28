import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_list_view.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/view_model/product_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductPage extends ConsumerWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(productViewModel);

    return items == null ? const Center(child: Text("상품이 없습니다")) : const ProductListView();
  }
}
