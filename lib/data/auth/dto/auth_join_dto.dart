import 'dart:convert';

class AuthJoinDto {
  AuthJoinDto({
    required this.nickname,
    required this.token,
    required this.addressFullName,
  });

  final String nickname;
  final String token;
  final String addressFullName;

  AuthJoinDto copyWith({
    String? nickname,
    String? token,
    String? addressFullName,
  }) =>
      AuthJoinDto(
        nickname: nickname ?? this.nickname,
        token: token ?? this.token,
        addressFullName: addressFullName ?? this.addressFullName,
      );

  factory AuthJoinDto.fromRawJson(String str) => AuthJoinDto.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory AuthJoinDto.fromJson(Map<String, dynamic> json) => AuthJoinDto(
        nickname: json["nickname"],
        token: json["token"],
        addressFullName: json["addressFullName"],
      );

  Map<String, dynamic> toJson() => {
        "nickname": nickname,
        "token": token,
        "addressFullName": addressFullName,
      };
}
