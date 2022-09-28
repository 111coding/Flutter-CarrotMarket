import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_carrotmarket/data/file/model/file_model.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required int idx,
    required String username,
    required String nickname,
    required FileModel? profileImage,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
