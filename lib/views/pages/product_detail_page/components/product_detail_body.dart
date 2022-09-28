import 'package:flutter/cupertino.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_info.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_user_products.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';

class ProductDetailBody extends ConsumerWidget {
  const ProductDetailBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productDetailViewModel);
    return product == null
        ? const Center(
            child: SizedBox(
              height: 20.0,
              width: 20.0,
              child: CupertinoActivityIndicator(),
            ),
          )
        : NestedScrollView(
            physics: const ClampingScrollPhysics(),
            headerSliverBuilder: (BuildContext context, bool boxIsScrolled) => [
              const ProductDetailAppBar(),
            ],
            body: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  const ProductDetailInfo(),
                  eHeight(20),
                  const GreyLine(),
                  eHeight(20),
                  const ProductDetailUserProducts(),
                ],
              ),
            ),
          );
  }
}
