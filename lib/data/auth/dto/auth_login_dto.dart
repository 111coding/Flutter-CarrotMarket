enum LoginType {
  login("LOGIN"),
  refresh("REFRESH");

  final String name;
  const LoginType(this.name);
}

class AuthLoginDto {
  AuthLoginDto({
    this.loginType,
    this.token,
  });

  LoginType? loginType;
  String? token;

  Map<String, dynamic> toJson() => {
        "loginType": loginType?.name,
        "token": token,
      };
}
