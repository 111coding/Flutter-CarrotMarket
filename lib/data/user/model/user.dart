import 'package:flutter_carrotmarket/data/file/model/file_model.dart';

class User {
  const User({
    required this.id,
    required this.username,
    required this.nickname,
    required this.profileImage,
  });

  final int id;
  final String username;
  final String nickname;
  final FileModel? profileImage;

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'username': username,
      'nickname': nickname,
      'profileImage': profileImage?.toJson(), // FileModel이 null일 수 있으므로 null 체크
    };
  }

  // JSON에서 User 객체 생성
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      username: json['username'],
      nickname: json['nickname'],
      profileImage: json['profileImage'] != null
          ? FileModel.fromJson(json['profileImage']) // FileModel에서 JSON 변환
          : null,
    );
  }
}
