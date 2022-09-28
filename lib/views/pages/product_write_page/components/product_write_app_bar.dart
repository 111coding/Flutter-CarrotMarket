import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/appbar_preferred_size.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_type_provider.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWriteAppBar extends AppBar implements PreferredSizeWidget {
  ProductWriteAppBar({super.key});

  @override
  Widget? get title => Consumer(
        builder: (context, ref, child) {
          return Text("중고거래 ${ref.watch(productWriteTypeProvider).type.text}");
        },
      );

  @override
  List<Widget>? get actions => [
        Consumer(
          builder: (context, ref, child) {
            return TextButton(onPressed: () => submit(context, ref), child: Text("완료"));
          },
        ),
      ];

  void submit(BuildContext context, WidgetRef ref) async {
    // 키보드 내리기
    FocusScope.of(context).unfocus();
    final result = await ref.read(productWriteViewModel.notifier).submit();
    if (result == null) {
      // 업로드 성공! 뒤로!
      // ignore: use_build_context_synchronously
      context.back();
    } else {
      // 스넥바 띄우기!
      // ignore: use_build_context_synchronously
      SimpleSnackbar.show(context, result);
    }
  }

  @override
  bool? get centerTitle => true;

  @override
  PreferredSizeWidget? get bottom => appBarBottomLine();
}
