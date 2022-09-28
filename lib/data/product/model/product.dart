import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/file/model/file_model.dart';
import 'package:flutter_carrotmarket/data/product/model/product_category.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

// 이름 겹칠거 우려해서 model 붙힘!
@freezed
class Product with _$Product {
  const factory Product({
    required int idx,
    required String title,
    required Address address,
    required int price,
    required int likeCnt,
    required DateTime updateAt,
    required DateTime createAt,
    // ========== Only List Begin ==========
    FileModel? thumbnail,
    // ========== Only List End ==========
    // ========== Only Detail Begin ==========
    String? content,
    List<FileModel>? imageFiles,
    User? user,
    bool? myLike,
    ProductCategory? category,
    // ========== Only Detail End ==========
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
}
