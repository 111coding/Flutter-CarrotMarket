import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ProductDetailUserProducts extends ConsumerWidget {
  const ProductDetailUserProducts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: hPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "${ref.watch(productDetailViewModel)!.product.user!.nickname}님의 판매상품",
            style: textTheme().headline2,
          ),
          GridView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true, // wrap_content
            itemCount: ref.watch(productDetailViewModel)!.userProducts.length,
            padding: vPadding(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              childAspectRatio: 1, //item 의 비율
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => _girdItem(ref.watch(productDetailViewModel)!.userProducts[index]),
          )
        ],
      ),
    );
  }

  Widget _girdItem(Product item) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.grey[200],
                width: double.infinity,
                height: constraints.maxHeight * 2 / 3,
                alignment: Alignment.center,
                child: item.thumbnail == null
                    ? Image.asset(
                        "assets/png/goods.png",
                        height: 80,
                        fit: BoxFit.fill,
                      )
                    : Image.network(
                        item.thumbnail!.url,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
              ),
            ),
            const Spacer(),
            Text(item.title, style: textTheme().bodyText1),
            Text("${NumberFormat("#,###").format(item.price)}원", style: textTheme().bodyText1),
            const Spacer(),
          ],
        );
      },
    );
  }
}
