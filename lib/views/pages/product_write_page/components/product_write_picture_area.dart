import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_picture_item.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_picture_upload_box.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWritePictureArea extends ConsumerWidget {
  const ProductWritePictureArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.read(productWriteViewModel).imageFiles;
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
          return ProductWritePictureItem(item: items[index - 1]);
        },
        separatorBuilder: (context, index) => eWidth(kHorizontalPadding / 2),
        itemCount: ref.watch(productWriteViewModel).imageFiles.length + 1,
      ),
    );
  }
}
