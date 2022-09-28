import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class ProductWriteCategoryArea extends StatelessWidget {
  const ProductWriteCategoryArea({
    super.key,
  });

  void goToSelectCategory() {
    Routes.productCategoryList.push();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goToSelectCategory(),
      child: Container(
        width: double.infinity,
        height: 60,
        color: Colors.transparent,
        padding: hPadding(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("카테고리 선택"),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }
}
