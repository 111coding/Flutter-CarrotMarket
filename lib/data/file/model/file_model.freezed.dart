// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FileModel _$FileModelFromJson(Map<String, dynamic> json) {
  return _FileModel.fromJson(json);
}

/// @nodoc
mixin _$FileModel {
  int get idx => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get originName => throw _privateConstructorUsedError;
  String get contentType => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res>;
  $Res call(
      {int idx,
      String url,
      String originName,
      String contentType,
      DateTime createAt});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res> implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  final FileModel _value;
  // ignore: unused_field
  final $Res Function(FileModel) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? url = freezed,
    Object? originName = freezed,
    Object? contentType = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      originName: originName == freezed
          ? _value.originName
          : originName // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_FileModelCopyWith<$Res> implements $FileModelCopyWith<$Res> {
  factory _$$_FileModelCopyWith(
          _$_FileModel value, $Res Function(_$_FileModel) then) =
      __$$_FileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idx,
      String url,
      String originName,
      String contentType,
      DateTime createAt});
}

/// @nodoc
class __$$_FileModelCopyWithImpl<$Res> extends _$FileModelCopyWithImpl<$Res>
    implements _$$_FileModelCopyWith<$Res> {
  __$$_FileModelCopyWithImpl(
      _$_FileModel _value, $Res Function(_$_FileModel) _then)
      : super(_value, (v) => _then(v as _$_FileModel));

  @override
  _$_FileModel get _value => super._value as _$_FileModel;

  @override
  $Res call({
    Object? idx = freezed,
    Object? url = freezed,
    Object? originName = freezed,
    Object? contentType = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_$_FileModel(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      originName: originName == freezed
          ? _value.originName
          : originName // ignore: cast_nullable_to_non_nullable
              as String,
      contentType: contentType == freezed
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FileModel implements _FileModel {
  const _$_FileModel(
      {required this.idx,
      required this.url,
      required this.originName,
      required this.contentType,
      required this.createAt});

  factory _$_FileModel.fromJson(Map<String, dynamic> json) =>
      _$$_FileModelFromJson(json);

  @override
  final int idx;
  @override
  final String url;
  @override
  final String originName;
  @override
  final String contentType;
  @override
  final DateTime createAt;

  @override
  String toString() {
    return 'FileModel(idx: $idx, url: $url, originName: $originName, contentType: $contentType, createAt: $createAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileModel &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality()
                .equals(other.originName, originName) &&
            const DeepCollectionEquality()
                .equals(other.contentType, contentType) &&
            const DeepCollectionEquality().equals(other.createAt, createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(originName),
      const DeepCollectionEquality().hash(contentType),
      const DeepCollectionEquality().hash(createAt));

  @JsonKey(ignore: true)
  @override
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      __$$_FileModelCopyWithImpl<_$_FileModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FileModelToJson(this);
  }
}

abstract class _FileModel implements FileModel {
  const factory _FileModel(
      {required final int idx,
      required final String url,
      required final String originName,
      required final String contentType,
      required final DateTime createAt}) = _$_FileModel;

  factory _FileModel.fromJson(Map<String, dynamic> json) =
      _$_FileModel.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get url => throw _privateConstructorUsedError;
  @override
  String get originName => throw _privateConstructorUsedError;
  @override
  String get contentType => throw _privateConstructorUsedError;
  @override
  DateTime get createAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
