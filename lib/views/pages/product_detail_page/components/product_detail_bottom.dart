import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/views/components/carrot_button.dart';
import 'package:flutter_carrotmarket/views/components/grey_vertical_line.dart';
import 'package:flutter_carrotmarket/views/components/icon_24_button.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class ProductDetailBottom extends ConsumerWidget {
  const ProductDetailBottom({super.key});

  void _chat(WidgetRef ref, BuildContext context) async {
    // TODO chat 구현하고 돌아오기
    Routes.chat.push();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(productDetailViewModel) == null
        ? eHeight(0)
        : SafeArea(
            child: Container(
              width: double.infinity,
              height: 100,
              padding: hPadding(),
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.grey[300]!, blurRadius: 1, spreadRadius: 1)],
                // color: Colors.white,
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Expanded(child: _btnGroup(ref, context)),
                  eHeight(20),
                ],
              ),
            ),
          );
  }

  Widget _btnGroup(WidgetRef ref, BuildContext context) {
    return Row(
      children: [
        _likeBtn(ref),
        eWidth(10),
        const GreyVerticalLine(height: 40),
        eWidth(10),
        _price(ref),
        _chatBtn(ref, context),
      ],
    );
  }

  Widget _likeBtn(WidgetRef ref) {
    final myLike = ref.watch(productDetailViewModel)!.product.myLike!;
    return Icon24Button(
      iconData: myLike ? Icons.favorite : Icons.favorite_outline,
      onTap: () => ref.watch(productDetailViewModel.notifier).like(),
      color: myLike ? Colors.orange : Colors.grey,
    );
  }

  Widget _price(WidgetRef ref) {
    final product = ref.watch(productDetailViewModel)!.product;
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.price == 0 ? "무료나눔" : "${NumberFormat("#,###").format(product.price)} 원",
          style: textTheme().headline2,
        ),
      ],
    ));
  }

  Widget _chatBtn(WidgetRef ref, BuildContext context) {
    return SizedBox(
      width: 100,
      child: CarrotButton(
        text: "채팅하기",
        margin: EdgeInsets.zero,
        onPressed: () => _chat(ref, context),
      ),
    );
  }
}
