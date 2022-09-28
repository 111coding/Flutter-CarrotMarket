import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:flutter_carrotmarket/data/product/repository/product_repository.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/view_model/product_view_model.dart';
import 'package:riverpod/riverpod.dart';

final productDetailIdxProvider = Provider<ProductDetailIdxProvider>((ref) => ProductDetailIdxProvider());

class ProductDetailIdxProvider {
  ProductDetailIdxProvider();
  int idx = -1;
}

final productDetailViewModel = StateNotifierProvider.autoDispose<ProductDetailViewModel, ProductDetailState?>(
  (ref) => ProductDetailViewModel(null, ref, ref.read(productDetailIdxProvider).idx)..fetchDetail(),
);

class ProductDetailState {
  Product product;
  List<Product> userProducts;

  ProductDetailState({required this.product, required this.userProducts});

  ProductDetailState copyWith({
    Product? product,
    List<Product>? userProducts,
  }) {
    return ProductDetailState(
      product: product ?? this.product,
      userProducts: userProducts ?? this.userProducts,
    );
  }
}

class ProductDetailViewModel extends StateNotifier<ProductDetailState?> {
  ProductDetailViewModel(super.state, this._ref, this.idx);

  final Ref _ref;
  final int idx;

  Future<void> fetchDetail() async {
    final product = await _ref.read(productRepository).fetchDetail(idx: idx);
    if (product != null) {
      state = ProductDetailState(product: product, userProducts: []);
      fetchUserProducts();
    }
  }

  Future<void> fetchUserProducts() async {
    final result = await _ref.read(productRepository).search(
          size: 4,
          page: 0,
          addressIdx: 0,
          searchStr: "",
          nickname: state!.product.user!.nickname,
        );
    if (result != null) {
      state = state!.copyWith(userProducts: result.content);
    }
  }

  Future<String> updateTime() async {
    final canUpdate = CarrotDateUtils.canUpdateTime(state!.product.updateAt, state!.product.createAt);
    if (!canUpdate) return "게시글 작성 또는 끌어올리기 3시간 이후에 가능합니다.";
    final result = await _ref.read(productRepository).updateTime(idx: idx);
    if (result) {
      await fetchDetail();
      return "끌어올리기 성공";
    }
    return "끌어올리기 횟수 초과";
  }

  Future<bool> delete() async {
    final result = await _ref.read(productRepository).deleteProduct(idx: idx);
    if (result) {
      _ref.read(productViewModel.notifier).deleteItem(idx);
    }
    return result;
  }

  Future<void> like() async {
    final isLike = await _ref.read(productRepository).like(idx: idx);
    final nextCnt = isLike! ? state!.product.likeCnt + 1 : state!.product.likeCnt - 1;
    state = state!.copyWith(product: state!.product.copyWith(myLike: isLike, likeCnt: nextCnt));
  }
}
