import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/components/product_search_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductSearchBody extends ConsumerWidget {
  const ProductSearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const ProductSearchListView();
  }
}
