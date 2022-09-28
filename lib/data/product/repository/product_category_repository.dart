import 'dart:convert';

import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:flutter_carrotmarket/data/product/model/product_category.dart';
import 'package:riverpod/riverpod.dart';

final productCategoryRepository = Provider<ProductCategoryRepository>((ref) => ProductCategoryRepository(ref));

class ProductCategoryRepository {
  ProductCategoryRepository(this._ref);

  final Ref _ref;

  final _endPoint = "/api/product/category";

  Future<List<ProductCategory>?> fetchList() async {
    final response = await _ref.read(httpProvider).get(_endPoint);
    if (response.statusCode == 200) {
      print(response.body);
      return (jsonDecode(response.body)["content"] as List)
          .map(
            (e) => ProductCategory.fromJson(e),
          )
          .toList();
    }
    return null;
  }
}
