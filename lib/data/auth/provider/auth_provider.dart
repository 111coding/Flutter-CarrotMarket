import 'dart:convert';

import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/data/auth/dto/auth_join_dto.dart';
import 'package:flutter_carrotmarket/data/auth/dto/auth_login_dto.dart';
import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart' as kakao;
import 'package:riverpod/riverpod.dart';

final authProvider = Provider<AuthProvider>((ref) => AuthProvider(ref));

class AuthProvider {
  AuthProvider(this._ref);

  String? jwt;

  final Ref _ref;

  Future<String?> _getKakaoToken() async {
    try {
      kakao.OAuthToken token = await kakao.isKakaoTalkInstalled()
          ? await kakao.UserApi.instance.loginWithKakaoTalk() // 카카오톡 앱으로 로그인
          : await kakao.UserApi.instance.loginWithKakaoAccount(); // 웹뷰로 로그인
      return token.accessToken;
    } catch (e) {
      // 취소했을때! 뷰에서 아무동작X
      return null;
    }
  }

  Future<bool?> login() async {
    String? kakaoAccessToken = await _getKakaoToken();
    if (kakaoAccessToken == null) return null;

    final response = await _ref.read(httpProvider).post(
          "/login",
          body: AuthLoginDto(
            loginType: LoginType.login,
            token: kakaoAccessToken,
          ).toJson(),
        );
    if (response.statusCode == 200) {
      jwt = response.headers["authorization"]!;
      // 로그인 하고 공통으로 관리할 정보 가져오기!
      print(jwt);
      await _loginSucFn();
      return true;
    }

    return false;
  }

  Future<void> _loginSucFn() async {
    // 병렬! 나중에 추가하려고
    await Future.wait([
      _ref.read(addressProvider.notifier).fetchMyAddresses(),
    ]);
  }

  Future<bool?> refresh() async {
    if (jwt == null) return null;

    final response = await _ref.read(httpProvider).post(
          "/login",
          body: AuthLoginDto(
            loginType: LoginType.refresh,
            token: jwt?.replaceAll("Bearer ", ""),
          ).toJson(),
        );
    if (response.statusCode == 200) {
      jwt = response.headers["authorization"]!;
      return true;
    }

    return false;
  }

  Future<bool?> join({required String nickname, required String addressFullName}) async {
    String? kakaoAccessToken = await _getKakaoToken();
    if (kakaoAccessToken == null) return null;

    final response = await _ref.read(httpProvider).post(
          "/api/user/join",
          body: AuthJoinDto(nickname: nickname, token: kakaoAccessToken, addressFullName: addressFullName).toJson(),
        );

    if (response.statusCode == 200) {
      final code = jsonDecode(response.body)["code"];
      return code == 200;
    }

    return false;
  }

  Future<bool> nicknameCheck({required String username}) async {
    final response = await _ref.read(httpProvider).get("/api/user/nicknameCk", query: {
      "nickname": username,
    });
    if (response.statusCode == 200) {
      final code = jsonDecode(response.body)["code"];
      return code == 200;
    }

    return false;
  }
}
