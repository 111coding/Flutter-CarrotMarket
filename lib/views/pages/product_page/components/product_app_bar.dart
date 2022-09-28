import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/views/components/custom_drop_down.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
  Widget get title => Consumer(
        builder: (context, ref, child) {
          final widgetKey = GlobalKey();
          return GestureDetector(
            onTap: () {
              CustomDropDown.show(
                widgetKey,
                itemWidth: 180,
                items: [
                  ...ref
                      .watch(addressProvider)
                      .map(
                        (e) => CustomDropDownItem(
                          text: e.displayName,
                          style: ref.watch(addressProvider.notifier).defaultAddress()?.idx == e.idx ? const TextStyle(color: Colors.orange) : null,
                          onClick: () {
                            ref.watch(addressProvider.notifier).changeDefaultYn(idx: e.idx);
                          },
                        ),
                      )
                      .toList(),
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
                  ref.watch(addressProvider.notifier).defaultAddress()?.displayName ?? "동네 없음",
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
        },
      );

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
