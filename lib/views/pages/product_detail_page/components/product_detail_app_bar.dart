import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/custom_drop_down.dart';
import 'package:flutter_carrotmarket/views/components/custom_sliver_app_bar.dart';
import 'package:flutter_carrotmarket/views/components/icon_24_button.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_image_page_view.dart';
import 'package:flutter_carrotmarket/data/user/provider/user_provider.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductDetailAppBar extends ConsumerWidget {
  const ProductDetailAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomSliverAppBar(
      appBar: _appBar(context, ref),
      iconBeginColor: Colors.white,
      iconEndColor: Colors.black,
      appBarBackgroundColor: Colors.white,
      expandedHeight: 350,
      expandedSpace: _body(ref),
      openedSystemUiOverlayStyle: SystemUiOverlayStyle.light,
      closedSystemUiOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  Widget _appBar(BuildContext context, WidgetRef ref) {
    GlobalKey moreBtnKey = GlobalKey();
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(children: [
        Icon24Button(iconData: Icons.arrow_back, onTap: () => context.back()),
        eWidth(10),
        Icon24Button(iconData: Icons.home_outlined, onTap: () => context.back()),
        const Spacer(),
        eWidth(10),
        Icon24Button(
          key: moreBtnKey,
          iconData: Icons.more_vert,
          onTap: () => _showDropDown(context, ref, moreBtnKey),
        )
      ]),
    );
  }

  void _showDropDown(BuildContext context, WidgetRef ref, GlobalKey key) {
    final isMine = (ref.watch(userProvider)?.idx ?? -1) == (ref.read(productDetailViewModel)!.product.user!.idx);
    CustomDropDown.show(
      key,
      itemWidth: 100,
      items: isMine
          ? [
              CustomDropDownItem(
                text: "게시글 수정",
                onClick: () {
                  // TODO product wirte 하고 돌아와서 param 넘기기
                  Routes.productWrite.push();
                },
              ),
              CustomDropDownItem(
                text: "끌어올리기",
                onClick: () async {
                  final message = await ref.read(productDetailViewModel.notifier).updateTime();
                  SimpleSnackbar.show(context, message);
                },
              ),
              CustomDropDownItem(
                text: "삭제",
                onClick: () async {
                  final result = await ref.read(productDetailViewModel.notifier).delete();
                  if (result) context.back();
                },
              ),
            ]
          : [
              CustomDropDownItem(
                text: "신고하기",
                onClick: () {},
              )
            ],
    );
  }

  Widget _body(WidgetRef ref) {
    return ref.watch(productDetailViewModel)?.product.imageFiles?.isEmpty ?? true
        ? Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.all(50),
            child: Image.asset(
              "assets/png/goods.png",
            ),
          )
        : const ProductDetailImagePageView();
  }
}
