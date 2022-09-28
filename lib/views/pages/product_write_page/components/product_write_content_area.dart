import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/write_field.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWriteContentArea extends ConsumerWidget {
  const ProductWriteContentArea({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WriteField(
      controller: ref.watch(productWriteViewModel.notifier).contentCtrl,
      hint: "게시글 내용을 작성해주세요.(가품 및 판매금지품목은 게시가 제한될 수 있어요.)",
      maxLine: null,
    );
  }
}
