// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      idx: json['idx'] as int,
      username: json['username'] as String,
      nickname: json['nickname'] as String,
      profileImage: json['profileImage'] == null
          ? null
          : FileModel.fromJson(json['profileImage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'idx': instance.idx,
      'username': instance.username,
      'nickname': instance.nickname,
      'profileImage': instance.profileImage,
    };
