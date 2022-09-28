import 'dart:convert';

import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:riverpod/riverpod.dart';

final userRepository = Provider<UserRepository>((ref) => UserRepository(ref));

class UserRepository {
  UserRepository(this._ref);

  final Ref _ref;

  final _endPoint = "/api/user";

  Future<User?> fetchMyInfo() async {
    final response = await _ref.read(httpProvider).get("$_endPoint/myInfo");
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body)["content"]);
    }
    return null;
  }
}
