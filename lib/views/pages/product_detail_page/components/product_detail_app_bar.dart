import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/custom_drop_down.dart';
import 'package:flutter_carrotmarket/views/components/custom_sliver_app_bar.dart';
import 'package:flutter_carrotmarket/views/components/icon_24_button.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/components/product_detail_image_page_view.dart';

class ProductDetailAppBar extends StatelessWidget {
  const ProductDetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomSliverAppBar(
      appBar: _appBar(context),
      iconBeginColor: Colors.white,
      iconEndColor: Colors.black,
      appBarBackgroundColor: Colors.white,
      expandedHeight: 350,
      expandedSpace: _body(),
      openedSystemUiOverlayStyle: SystemUiOverlayStyle.light,
      closedSystemUiOverlayStyle: SystemUiOverlayStyle.dark,
    );
  }

  Widget _appBar(BuildContext context) {
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
          onTap: () => _showDropDown(context, moreBtnKey),
        )
      ]),
    );
  }

  void _showDropDown(BuildContext context, GlobalKey key) {
    CustomDropDown.show(key, itemWidth: 100, items: [
      CustomDropDownItem(
        text: "게시글 수정",
        onClick: () {
          Routes.productWrite.push();
        },
      ),
      CustomDropDownItem(
        text: "끌어올리기",
        onClick: () async {},
      ),
      CustomDropDownItem(
        text: "삭제",
        onClick: () async {},
      ),
    ]);
  }

  Widget _body() {
    return const ProductDetailImagePageView();
  }
}
