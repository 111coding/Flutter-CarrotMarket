// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FileModel _$$_FileModelFromJson(Map<String, dynamic> json) => _$_FileModel(
      idx: json['idx'] as int,
      url: json['url'] as String,
      originName: json['originName'] as String,
      contentType: json['contentType'] as String,
      createAt: DateTime.parse(json['createAt'] as String),
    );

Map<String, dynamic> _$$_FileModelToJson(_$_FileModel instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'url': instance.url,
      'originName': instance.originName,
      'contentType': instance.contentType,
      'createAt': instance.createAt.toIso8601String(),
    };
