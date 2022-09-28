// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Product _$$_ProductFromJson(Map<String, dynamic> json) => _$_Product(
      idx: json['idx'] as int,
      title: json['title'] as String,
      address: Address.fromJson(json['address'] as Map<String, dynamic>),
      price: json['price'] as int,
      likeCnt: json['likeCnt'] as int,
      updateAt: DateTime.parse(json['updateAt'] as String),
      createAt: DateTime.parse(json['createAt'] as String),
      thumbnail: json['thumbnail'] == null
          ? null
          : FileModel.fromJson(json['thumbnail'] as Map<String, dynamic>),
      content: json['content'] as String?,
      imageFiles: (json['imageFiles'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      myLike: json['myLike'] as bool?,
      category: json['category'] == null
          ? null
          : ProductCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProductToJson(_$_Product instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'address': instance.address,
      'price': instance.price,
      'likeCnt': instance.likeCnt,
      'updateAt': instance.updateAt.toIso8601String(),
      'createAt': instance.createAt.toIso8601String(),
      'thumbnail': instance.thumbnail,
      'content': instance.content,
      'imageFiles': instance.imageFiles,
      'user': instance.user,
      'myLike': instance.myLike,
      'category': instance.category,
    };
