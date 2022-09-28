import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/data/common/paging.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:flutter_carrotmarket/data/product/repository/product_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:riverpod/riverpod.dart';

final productViewModel = StateNotifierProvider.autoDispose<ProductViewModel, Paging<Product>?>((ref) {
  final viewModel = ProductViewModel(null, ref);
  // default yn 바뀔때마다 프로덕트 갱신!
  ref.listen(addressProvider, (previous, next) {
    viewModel.refreshList();
  });
  return viewModel..refreshList();
});

class ProductViewModel extends StateNotifier<Paging<Product>?> {
  ProductViewModel(super.state, this._ref);

  final Ref _ref;

  final refreshCtrl = RefreshController();

  Future<void> refreshList() async {
    state = await _fetchList(refresh: true);
    refreshCtrl.refreshCompleted();
  }

  Future<void> nextList() async {
    if (state?.last ?? true) {
      await Future.delayed(const Duration(milliseconds: 500));
      refreshCtrl.loadComplete();
      return;
    }
    final result = await _fetchList();
    if (result != null) {
      final newState = result.copyWith(content: [...state!.content, ...result.content]);
      state = newState;
    }

    refreshCtrl.loadComplete();
  }

  void deleteItem(int idx) {
    final newList = state!.content.where((e) => e.idx != idx).toList();
    state = state!.copyWith(content: newList);
  }

  Future<Paging<Product>?> _fetchList({bool refresh = false}) async {
    final addrIdx = _ref.read(addressProvider.notifier).defaultAddress()!.idx;
    final nextPage = refresh ? 0 : (state?.offset ?? -1) + 1;
    final result = await _ref.read(productRepository).fetchList(page: nextPage, addressIdx: addrIdx);
    return result;
  }
}
