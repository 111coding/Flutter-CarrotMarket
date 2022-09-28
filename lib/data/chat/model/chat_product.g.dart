// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChatProduct _$$_ChatProductFromJson(Map<String, dynamic> json) =>
    _$_ChatProduct(
      idx: json['idx'] as int,
      title: json['title'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      price: json['price'] as int,
    );

Map<String, dynamic> _$$_ChatProductToJson(_$_ChatProduct instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'user': instance.user,
      'address': instance.address,
      'price': instance.price,
    };
