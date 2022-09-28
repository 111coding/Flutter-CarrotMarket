import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'product_item_detail.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';

class ProductItem extends ConsumerWidget {
  final Product product;
  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        Routes.productDetail.push();
      },
      child: Container(
        height: 135.0,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [_image(), const SizedBox(width: 16.0), ProductItemDetail(product: product)],
        ),
      ),
    );
  }

  Widget _image() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: product.thumbnail == null
          ? Container(
              color: Colors.grey[200],
              width: 115,
              height: 115,
              alignment: Alignment.center,
              child: Image.asset(
                "assets/png/goods.png",
                width: 80,
                height: 80,
                fit: BoxFit.fill,
              ),
            )
          : Image.network(
              product.thumbnail!.url,
              width: 115,
              height: 115,
              fit: BoxFit.cover,
            ),
    );
  }
}
