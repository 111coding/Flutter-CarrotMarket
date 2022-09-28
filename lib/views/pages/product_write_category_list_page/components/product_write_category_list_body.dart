import 'package:flutter/material.dart';

import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_category_list_page/components/product_write_category_list_item.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_category_list_page/view_model/product_write_category_list_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWriteCategoryListBody extends ConsumerWidget {
  const ProductWriteCategoryListBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(productWriteCategoryListViewModel);
    return ListView.separated(
      itemBuilder: (context, index) => ProductWriteCategoryListItem(
        category: items[index],
      ),
      separatorBuilder: (context, index) => const GreyLine(),
      itemCount: items.length,
    );
  }
}
