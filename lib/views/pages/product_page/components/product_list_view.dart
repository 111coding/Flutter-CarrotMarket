import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_carrotmarket/views/components/refresher/refresher_footer.dart';
import 'package:flutter_carrotmarket/views/components/refresher/refresher_header.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/view_model/product_view_model.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ProductListView extends ConsumerWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(productViewModel);
    final viewModel = ref.watch(productViewModel.notifier);
    return SmartRefresher(
      header: const RefresherHeader(),
      footer: const RefresherFooter(),
      controller: viewModel.refreshCtrl,
      enablePullDown: true,
      enablePullUp: true,
      onLoading: () async => await viewModel.nextList(),
      onRefresh: () async => await viewModel.refreshList(),
      child: ListView.separated(
        itemBuilder: (context, index) => ProductItem(product: items!.content[index]),
        separatorBuilder: (context, index) => const GreyLine(),
        itemCount: items!.content.length,
      ),
    );
  }
}
