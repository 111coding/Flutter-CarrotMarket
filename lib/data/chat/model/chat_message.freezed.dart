// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  int get idx => throw _privateConstructorUsedError;
  @ChatMessageTypeConverter()
  ChatMessageType get messageType => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res>;
  $Res call(
      {int idx,
      @ChatMessageTypeConverter() ChatMessageType messageType,
      String content,
      DateTime createAt});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res> implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  final ChatMessage _value;
  // ignore: unused_field
  final $Res Function(ChatMessage) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? messageType = freezed,
    Object? content = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as ChatMessageType,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatMessageCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$_ChatMessageCopyWith(
          _$_ChatMessage value, $Res Function(_$_ChatMessage) then) =
      __$$_ChatMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idx,
      @ChatMessageTypeConverter() ChatMessageType messageType,
      String content,
      DateTime createAt});
}

/// @nodoc
class __$$_ChatMessageCopyWithImpl<$Res> extends _$ChatMessageCopyWithImpl<$Res>
    implements _$$_ChatMessageCopyWith<$Res> {
  __$$_ChatMessageCopyWithImpl(
      _$_ChatMessage _value, $Res Function(_$_ChatMessage) _then)
      : super(_value, (v) => _then(v as _$_ChatMessage));

  @override
  _$_ChatMessage get _value => super._value as _$_ChatMessage;

  @override
  $Res call({
    Object? idx = freezed,
    Object? messageType = freezed,
    Object? content = freezed,
    Object? createAt = freezed,
  }) {
    return _then(_$_ChatMessage(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      messageType: messageType == freezed
          ? _value.messageType
          : messageType // ignore: cast_nullable_to_non_nullable
              as ChatMessageType,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
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
class _$_ChatMessage implements _ChatMessage {
  const _$_ChatMessage(
      {required this.idx,
      @ChatMessageTypeConverter() required this.messageType,
      required this.content,
      required this.createAt});

  factory _$_ChatMessage.fromJson(Map<String, dynamic> json) =>
      _$$_ChatMessageFromJson(json);

  @override
  final int idx;
  @override
  @ChatMessageTypeConverter()
  final ChatMessageType messageType;
  @override
  final String content;
  @override
  final DateTime createAt;

  @override
  String toString() {
    return 'ChatMessage(idx: $idx, messageType: $messageType, content: $content, createAt: $createAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatMessage &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality()
                .equals(other.messageType, messageType) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.createAt, createAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(messageType),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(createAt));

  @JsonKey(ignore: true)
  @override
  _$$_ChatMessageCopyWith<_$_ChatMessage> get copyWith =>
      __$$_ChatMessageCopyWithImpl<_$_ChatMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatMessageToJson(this);
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final int idx,
      @ChatMessageTypeConverter() required final ChatMessageType messageType,
      required final String content,
      required final DateTime createAt}) = _$_ChatMessage;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$_ChatMessage.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  @ChatMessageTypeConverter()
  ChatMessageType get messageType => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  DateTime get createAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatMessageCopyWith<_$_ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
