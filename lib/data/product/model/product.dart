import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/file/model/file_model.dart';
import 'package:flutter_carrotmarket/data/product/model/product_category.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';

class Product {
  final int id;
  final String title;
  final Address address;
  final int price;
  final int likeCnt;
  final DateTime updatedAt;
  final DateTime createdAt;
  final FileModel? thumbnail; // 선택적 필드
  final String? content; // 선택적 필드
  final List<FileModel>? imageFiles; // 선택적 필드
  final User? user; // 선택적 필드
  final bool? myLike; // 선택적 필드
  final ProductCategory? category; // 선택적 필드

  // 생성자
  const Product({
    required this.id,
    required this.title,
    required this.address,
    required this.price,
    required this.likeCnt,
    required this.updatedAt,
    required this.createdAt,
    this.thumbnail,
    this.content,
    this.imageFiles,
    this.user,
    this.myLike,
    this.category,
  });

  // JSON에서 Product 객체 생성
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      address: Address.fromJson(json['address']),
      price: json['price'],
      likeCnt: json['likeCnt'],
      updatedAt: DateTime.parse(json['updatedAt']),
      createdAt: DateTime.parse(json['createdAt']),
      thumbnail: json['thumbnail'] != null
          ? FileModel.fromJson(json['thumbnail'])
          : null,
      content: json['content'],
      imageFiles: (json['imageFiles'] as List<dynamic>?)
          ?.map((e) => FileModel.fromJson(e))
          .toList(),
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      myLike: json['myLike'],
      category: json['category'] != null
          ? ProductCategory.fromJson(json['category'])
          : null,
    );
  }

  // Product 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'address': address.toJson(),
      'price': price,
      'likeCnt': likeCnt,
      'updatedAt': updatedAt.toIso8601String(),
      'createdAt': createdAt.toIso8601String(),
      'thumbnail': thumbnail?.toJson(),
      'content': content,
      'imageFiles': imageFiles?.map((e) => e.toJson()).toList(),
      'user': user?.toJson(),
      'myLike': myLike,
      'category': category?.toJson(),
    };
  }

  // copyWith 메서드 추가
  Product copyWith({
    int? id,
    String? title,
    Address? address,
    int? price,
    int? likeCnt,
    DateTime? updatedAt,
    DateTime? createdAt,
    FileModel? thumbnail,
    String? content,
    List<FileModel>? imageFiles,
    User? user,
    bool? myLike,
    ProductCategory? category,
  }) {
    return Product(
      id: id ?? this.id,
      title: title ?? this.title,
      address: address ?? this.address,
      price: price ?? this.price,
      likeCnt: likeCnt ?? this.likeCnt,
      updatedAt: updatedAt ?? this.updatedAt,
      createdAt: createdAt ?? this.createdAt,
      thumbnail: thumbnail ?? this.thumbnail,
      content: content ?? this.content,
      imageFiles: imageFiles ?? this.imageFiles,
      user: user ?? this.user,
      myLike: myLike ?? this.myLike,
      category: category ?? this.category,
    );
  }
}
