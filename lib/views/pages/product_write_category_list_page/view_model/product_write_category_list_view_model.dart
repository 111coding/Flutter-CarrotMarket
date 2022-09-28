import 'package:flutter_carrotmarket/data/product/model/product_category.dart';
import 'package:flutter_carrotmarket/data/product/repository/product_category_repository.dart';
import 'package:riverpod/riverpod.dart';

// 페이지 나갈 때 자동으로 없어지게!
final productWriteCategoryListViewModel = StateNotifierProvider.autoDispose<ProductWriteCategoryListViewModel, List<ProductCategory>>((ref) {
  return ProductWriteCategoryListViewModel([], ref)..fetchList();
});

class ProductWriteCategoryListViewModel extends StateNotifier<List<ProductCategory>> {
  ProductWriteCategoryListViewModel(super.state, this._ref);

  final Ref _ref;

  Future<void> fetchList() async {
    state = await _ref.read(productCategoryRepository).fetchList() ?? [];
  }
}
