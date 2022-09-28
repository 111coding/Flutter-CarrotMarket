import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:flutter_carrotmarket/data/user/repository/user_repository.dart';
import 'package:riverpod/riverpod.dart';

final userProvider = StateNotifierProvider<UserProvider, User?>((ref) => UserProvider(null, ref));

class UserProvider extends StateNotifier<User?> {
  UserProvider(super.state, this._ref);

  final Ref _ref;

  Future<void> fetchMyInfo() async {
    state = await _ref.read(userRepository).fetchMyInfo();
  }
}
