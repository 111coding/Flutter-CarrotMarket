import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_item.dart';

class ProductSearchListView extends StatelessWidget {
  const ProductSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ProductItem(
          product: Product(
        idx: 1,
        title: "title",
        address: const Address(
          idx: 1,
          fullName: "부산시 기장군 기장읍",
          displayName: "기장읍",
        ),
        price: 1000,
        likeCnt: 2,
        updateAt: DateTime.now(),
        createAt: DateTime.now(),
      )),
      separatorBuilder: (context, index) => const GreyLine(),
      itemCount: 20,
    );
  }
}
