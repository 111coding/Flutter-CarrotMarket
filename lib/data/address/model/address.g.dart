// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      idx: json['idx'] as int,
      fullName: json['fullName'] as String,
      displayName: json['displayName'] as String,
      defaultYn: json['defaultYn'] as bool?,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'idx': instance.idx,
      'fullName': instance.fullName,
      'displayName': instance.displayName,
      'defaultYn': instance.defaultYn,
    };
