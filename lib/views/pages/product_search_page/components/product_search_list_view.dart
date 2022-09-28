import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_item.dart';
import 'package:flutter_carrotmarket/views/components/refresher/refresher_footer.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/view_model/product_search_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class ProductSearchListView extends ConsumerWidget {
  const ProductSearchListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final items = ref.watch(productSearchViewModel);
    final viewModel = ref.watch(productSearchViewModel.notifier);

    if (items?.content.isEmpty ?? true) {
      return const Center(
        child: Text("검색 결과가 없습니다"),
      );
    }

    return SmartRefresher(
      footer: const RefresherFooter(),
      controller: viewModel.refreshCtrl,
      enablePullDown: true,
      enablePullUp: true,
      onLoading: () async => await viewModel.nextList(),
      child: ListView.separated(
        itemBuilder: (context, index) => ProductItem(product: items!.content[index]),
        separatorBuilder: (context, index) => const GreyLine(),
        itemCount: items!.content.length,
      ),
    );
  }
}
