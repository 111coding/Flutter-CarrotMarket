// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRequestDto _$ChatRequestDtoFromJson(Map<String, dynamic> json) {
  return _ChatRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ChatRequestDto {
  int get roomIdx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRequestDtoCopyWith<ChatRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRequestDtoCopyWith<$Res> {
  factory $ChatRequestDtoCopyWith(
          ChatRequestDto value, $Res Function(ChatRequestDto) then) =
      _$ChatRequestDtoCopyWithImpl<$Res>;
  $Res call({int roomIdx, String content});
}

/// @nodoc
class _$ChatRequestDtoCopyWithImpl<$Res>
    implements $ChatRequestDtoCopyWith<$Res> {
  _$ChatRequestDtoCopyWithImpl(this._value, this._then);

  final ChatRequestDto _value;
  // ignore: unused_field
  final $Res Function(ChatRequestDto) _then;

  @override
  $Res call({
    Object? roomIdx = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      roomIdx: roomIdx == freezed
          ? _value.roomIdx
          : roomIdx // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatRequestDtoCopyWith<$Res>
    implements $ChatRequestDtoCopyWith<$Res> {
  factory _$$_ChatRequestDtoCopyWith(
          _$_ChatRequestDto value, $Res Function(_$_ChatRequestDto) then) =
      __$$_ChatRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call({int roomIdx, String content});
}

/// @nodoc
class __$$_ChatRequestDtoCopyWithImpl<$Res>
    extends _$ChatRequestDtoCopyWithImpl<$Res>
    implements _$$_ChatRequestDtoCopyWith<$Res> {
  __$$_ChatRequestDtoCopyWithImpl(
      _$_ChatRequestDto _value, $Res Function(_$_ChatRequestDto) _then)
      : super(_value, (v) => _then(v as _$_ChatRequestDto));

  @override
  _$_ChatRequestDto get _value => super._value as _$_ChatRequestDto;

  @override
  $Res call({
    Object? roomIdx = freezed,
    Object? content = freezed,
  }) {
    return _then(_$_ChatRequestDto(
      roomIdx: roomIdx == freezed
          ? _value.roomIdx
          : roomIdx // ignore: cast_nullable_to_non_nullable
              as int,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRequestDto implements _ChatRequestDto {
  const _$_ChatRequestDto({required this.roomIdx, required this.content});

  factory _$_ChatRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRequestDtoFromJson(json);

  @override
  final int roomIdx;
  @override
  final String content;

  @override
  String toString() {
    return 'ChatRequestDto(roomIdx: $roomIdx, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRequestDto &&
            const DeepCollectionEquality().equals(other.roomIdx, roomIdx) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomIdx),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRequestDtoCopyWith<_$_ChatRequestDto> get copyWith =>
      __$$_ChatRequestDtoCopyWithImpl<_$_ChatRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRequestDtoToJson(this);
  }
}

abstract class _ChatRequestDto implements ChatRequestDto {
  const factory _ChatRequestDto(
      {required final int roomIdx,
      required final String content}) = _$_ChatRequestDto;

  factory _ChatRequestDto.fromJson(Map<String, dynamic> json) =
      _$_ChatRequestDto.fromJson;

  @override
  int get roomIdx => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRequestDtoCopyWith<_$_ChatRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
