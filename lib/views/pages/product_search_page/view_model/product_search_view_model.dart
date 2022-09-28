import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/data/common/paging.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:flutter_carrotmarket/data/product/repository/product_repository.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:riverpod/riverpod.dart';

final productSearchViewModel = StateNotifierProvider.autoDispose<ProductSearchViewModel, Paging<Product>?>((ref) {
  return ProductSearchViewModel(null, ref.read);
});

class ProductSearchViewModel extends StateNotifier<Paging<Product>?> {
  ProductSearchViewModel(super.state, this._read);

  final Reader _read;

  final refreshCtrl = RefreshController();

  final searchCtrl = TextEditingController();

  String searchStr = "";

  @override
  void dispose() {
    searchCtrl.dispose();
    super.dispose();
  }

  bool _validateStr() {
    // TODO
    return true;
  }

  Future<void> search() async {
    if (!_validateStr()) {
      return;
    }
    searchStr = searchCtrl.text.trim();
    state = await _search(searchStr, refresh: true);
  }

  Future<void> nextList() async {
    if (state?.last ?? true) {
      await Future.delayed(const Duration(milliseconds: 500));
      refreshCtrl.loadComplete();
      return;
    }
    final result = await _search(searchStr);
    if (result != null) {
      final newState = result.copyWith(content: [...state!.content, ...result.content]);
      state = newState;
    }

    refreshCtrl.loadComplete();
  }

  Future<Paging<Product>?> _search(String searchStr, {bool refresh = false}) async {
    final addrIdx = _read(addressProvider.notifier).defaultAddress()!.idx;
    final nextPage = refresh ? 0 : (state?.offset ?? -1) + 1;

    final result = await _read(productRepository).search(page: nextPage, addressIdx: addrIdx, searchStr: searchStr);
    return result;
  }
}
