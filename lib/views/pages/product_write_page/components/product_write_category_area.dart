import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWriteCategoryArea extends ConsumerWidget {
  const ProductWriteCategoryArea({
    super.key,
  });

  void goToSelectCategory(BuildContext context, WidgetRef ref) {
    Routes.productCategoryList.push();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final category = ref.watch(productWriteViewModel).category;
    return GestureDetector(
      onTap: () => goToSelectCategory(context, ref),
      child: Container(
        width: double.infinity,
        height: 60,
        color: Colors.transparent,
        padding: hPadding(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(category == null ? "카테고리 선택" : category.category),
            const Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
