import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/views/components/custom_drop_down.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';

class ProductAppBar extends AppBar implements PreferredSizeWidget {
  ProductAppBar({super.key});

  @override
  List<Widget>? get actions => [
        IconButton(
          icon: const Icon(CupertinoIcons.search),
          onPressed: () => Routes.productSearch.push(),
        ),
      ];

  @override
  Widget get title {
    final widgetKey = GlobalKey();
    return GestureDetector(
      onTap: () {
        CustomDropDown.show(
          widgetKey,
          itemWidth: 180,
          items: [
            CustomDropDownItem(
              text: "기장읍",
              style: const TextStyle(color: Colors.orange),
              onClick: () {},
            ),
            CustomDropDownItem(
              text: "송정동",
              onClick: () {},
            ),
            CustomDropDownItem(
              text: "내 동네 설정하기",
              onClick: () => Routes.addressSelect.push(),
            ),
          ],
        );
      },
      child: Row(
        children: [
          Text(
            key: widgetKey,
            "기장읍",
            style: const TextStyle(color: Colors.black),
          ),
          const SizedBox(width: 4.0),
          const Icon(
            CupertinoIcons.chevron_down,
            size: 15.0,
          ),
        ],
      ),
    );
  }

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
