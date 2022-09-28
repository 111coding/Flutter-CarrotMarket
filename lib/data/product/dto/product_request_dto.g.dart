// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductRequestDto _$$_ProductRequestDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductRequestDto(
      idx: json['idx'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      price: json['price'] as int,
      imageFileIdxList: (json['imageFileIdxList'] as List<dynamic>)
          .map((e) => e as int)
          .toList(),
      addressIdx: json['addressIdx'] as int,
      categoryIdx: json['categoryIdx'] as int,
    );

Map<String, dynamic> _$$_ProductRequestDtoToJson(
        _$_ProductRequestDto instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'title': instance.title,
      'content': instance.content,
      'price': instance.price,
      'imageFileIdxList': instance.imageFileIdxList,
      'addressIdx': instance.addressIdx,
      'categoryIdx': instance.categoryIdx,
    };
