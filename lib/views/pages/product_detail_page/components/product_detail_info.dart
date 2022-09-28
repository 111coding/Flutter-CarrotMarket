import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailInfo extends ConsumerWidget {
  const ProductDetailInfo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        _userInfo(ref),
        const GreyLine(),
        _productInfo(ref),
      ],
    );
  }

  Widget _productInfo(WidgetRef ref) {
    final product = ref.watch(productDetailViewModel)!.product;
    return Container(
      width: double.infinity,
      padding: hPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          eHeight(10),
          Text(product.title, style: textTheme().headlineLarge),
          eHeight(10),
          Row(
            children: [
              Text(
                product.category!.category,
                style: const TextStyle(decoration: TextDecoration.underline),
              ),
              eWidth(10),
              Text(CarrotDateUtils.compareString(product.updateAt, product.createAt)),
            ],
          ),
          eHeight(20),
          Text(product.content!),
          eHeight(20),
          Text("관심 ${product.likeCnt}"),
        ],
      ),
    );
  }

  Widget _userInfo(WidgetRef ref) {
    final product = ref.watch(productDetailViewModel)!.product;
    return Container(
      padding: hPadding(),
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          UserProfileImage(user: product.user!),
          eWidth(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(product.user!.nickname, style: textTheme().headline2),
              eHeight(5),
              Text(product.address.fullName),
              eHeight(5), // 글자 height때문에 프로필 이미지랑 정렬 맟출려고 넣음
            ],
          )
        ],
      ),
    );
  }
}
