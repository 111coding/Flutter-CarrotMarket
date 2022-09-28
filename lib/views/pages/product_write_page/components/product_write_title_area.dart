import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/write_field.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWriteTitleArea extends ConsumerWidget {
  const ProductWriteTitleArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return WriteField(
      controller: ref.watch(productWriteViewModel.notifier).titleCtrl,
      hint: "글 제목",
    );
  }
}
