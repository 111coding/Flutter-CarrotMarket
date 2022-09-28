import 'dart:convert';

import 'package:flutter_carrotmarket/data/common/paging.dart';
import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:flutter_carrotmarket/data/product/dto/product_request_dto.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';
import 'package:riverpod/riverpod.dart';

final productRepository = Provider<ProductRepository>((ref) => ProductRepository(ref));

class ProductRepository {
  ProductRepository(this._ref);

  final Ref _ref;

  final _endPoint = "/api/product";

  Future<Paging<Product>?> search({
    required int page,
    required int addressIdx,
    required String searchStr,
    String category = "",
    String nickname = "", // 닉네임 입력하면 카테고리, 서치스트링, addressIdx 무시!
    int size = 10,
  }) async {
    final response = await _ref.read(httpProvider).get("$_endPoint/search", query: {
      "page": page,
      "addressIdx": addressIdx,
      "searchStr": searchStr,
      "category": category,
      "nickname": nickname,
      "size": size,
      "sort": "updateAt,desc",
    });
    if (response.statusCode == 200) {
      return Paging<Product>.fromJson(
        jsonDecode(response.body),
        (list) => list.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList(),
      );
    }
    return null;
  }

  Future<Paging<Product>?> fetchList({required int page, required int addressIdx}) async {
    final response = await _ref.read(httpProvider).get(_endPoint, query: {
      "page": page,
      "addressIdx": addressIdx,
      "sort": "updateAt,desc",
    });
    if (response.statusCode == 200) {
      print(response.body);
      return Paging<Product>.fromJson(
        jsonDecode(response.body),
        (list) => list.map((e) => Product.fromJson(e as Map<String, dynamic>)).toList(),
      );
    }
    return null;
  }

  Future<Product?> fetchDetail({required int idx}) async {
    final response = await _ref.read(httpProvider).get("$_endPoint/$idx");
    if (response.statusCode == 200) {
      return Product.fromJson(jsonDecode(response.body)["content"]);
    }
    return null;
  }

  Future<bool?> saveProduct({required ProductRequestDto product}) async {
    final response = await _ref.read(httpProvider).post(
          "$_endPoint/save",
          body: product.toJson(),
        );
    return response.statusCode == 201;
  }

  Future<bool> deleteProduct({required int idx}) async {
    final response = await _ref.read(httpProvider).delete("$_endPoint/$idx");
    return response.statusCode == 200;
  }

  Future<bool?> updateProduct({required ProductRequestDto product}) async {
    final response = await _ref.read(httpProvider).post(
          "$_endPoint/update",
          body: product.toJson(),
        );
    print(response.body);
    return response.statusCode == 200;
  }

  Future<bool> updateTime({required int idx}) async {
    final response = await _ref.read(httpProvider).post("$_endPoint/updateTime/$idx");
    return response.statusCode == 200;
  }

  Future<bool?> like({required int idx}) async {
    final response = await _ref.read(httpProvider).post("$_endPoint/like/$idx");
    if (response.statusCode == 200) {
      // 현재 좋아요 여부(토글)
      return jsonDecode(response.body)["content"];
    }
    return null;
  }
}
