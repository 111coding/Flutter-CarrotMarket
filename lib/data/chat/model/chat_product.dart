import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';

class ChatProduct {
  final int id;
  final String title;
  final User user;
  final Address address;
  final int price;

  // 생성자
  const ChatProduct({
    required this.id,
    required this.title,
    required this.user,
    required this.address,
    required this.price,
  });

  // JSON에서 ChatProduct 객체 생성
  factory ChatProduct.fromJson(Map<String, dynamic> json) {
    return ChatProduct(
      id: json['id'],
      title: json['title'],
      user: User.fromJson(json['user']), // User 객체를 생성하는 메서드
      address: Address.fromJson(json['address']), // Address 객체를 생성하는 메서드
      price: json['price'],
    );
  }

  // ChatProduct 객체를 JSON으로 변환
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'user': user.toJson(), // User 객체를 JSON으로 변환
      'address': address.toJson(), // Address 객체를 JSON으로 변환
      'price': price,
    };
  }
}
