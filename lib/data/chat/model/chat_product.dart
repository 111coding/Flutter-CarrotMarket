import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_product.freezed.dart';
part 'chat_product.g.dart';

@freezed
class ChatProduct with _$ChatProduct {
  const factory ChatProduct({
    required int idx,
    required String title,
    required User user,
    required Address address,
    required int price,
  }) = _ChatProduct;

  factory ChatProduct.fromJson(Map<String, dynamic> json) => _$ChatProductFromJson(json);
}
