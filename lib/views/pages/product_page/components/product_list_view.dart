import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductListView extends ConsumerWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.separated(
      itemBuilder: (context, index) => const ProductItem(),
      separatorBuilder: (context, index) => const GreyLine(),
      itemCount: 20,
    );
  }
}
