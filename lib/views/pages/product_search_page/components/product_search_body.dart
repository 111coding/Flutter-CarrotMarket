import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/components/product_search_list_view.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:flutter_carrotmarket/views/pages/product_search_page/view_model/product_search_view_model.dart';

class ProductSearchBody extends ConsumerWidget {
  const ProductSearchBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(productSearchViewModel);

    return items == null
        ? const Center(
            child: Text("검색어를 입력해 주세요"),
          )
        : const ProductSearchListView();
  }
}
