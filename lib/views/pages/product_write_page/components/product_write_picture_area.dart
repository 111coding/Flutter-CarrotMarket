import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_picture_item.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_picture_upload_box.dart';

class ProductWritePictureArea extends StatelessWidget {
  const ProductWritePictureArea({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: ListView.separated(
        padding: hPadding(),
        scrollDirection: Axis.horizontal, // 가로 스크롤뷰
        itemBuilder: (context, index) {
          if (index == 0) {
            return const ProductWritePictureUploadBox();
          }
          return const ProductWritePictureItem();
        },
        separatorBuilder: (context, index) => eWidth(kHorizontalPadding / 2),
        itemCount: 3,
      ),
    );
  }
}
