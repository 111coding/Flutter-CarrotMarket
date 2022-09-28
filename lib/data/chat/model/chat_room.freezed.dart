// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_room.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatRoom _$ChatRoomFromJson(Map<String, dynamic> json) {
  return _ChatRoom.fromJson(json);
}

/// @nodoc
mixin _$ChatRoom {
  int get roomIdx => throw _privateConstructorUsedError;
  ChatProduct get product => throw _privateConstructorUsedError;
  User get sender => throw _privateConstructorUsedError;
  DateTime get createAt => throw _privateConstructorUsedError;
  List<ChatMessage>? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatRoomCopyWith<ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatRoomCopyWith<$Res> {
  factory $ChatRoomCopyWith(ChatRoom value, $Res Function(ChatRoom) then) =
      _$ChatRoomCopyWithImpl<$Res>;
  $Res call(
      {int roomIdx,
      ChatProduct product,
      User sender,
      DateTime createAt,
      List<ChatMessage>? messages});

  $ChatProductCopyWith<$Res> get product;
  $UserCopyWith<$Res> get sender;
}

/// @nodoc
class _$ChatRoomCopyWithImpl<$Res> implements $ChatRoomCopyWith<$Res> {
  _$ChatRoomCopyWithImpl(this._value, this._then);

  final ChatRoom _value;
  // ignore: unused_field
  final $Res Function(ChatRoom) _then;

  @override
  $Res call({
    Object? roomIdx = freezed,
    Object? product = freezed,
    Object? sender = freezed,
    Object? createAt = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      roomIdx: roomIdx == freezed
          ? _value.roomIdx
          : roomIdx // ignore: cast_nullable_to_non_nullable
              as int,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ChatProduct,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>?,
    ));
  }

  @override
  $ChatProductCopyWith<$Res> get product {
    return $ChatProductCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }

  @override
  $UserCopyWith<$Res> get sender {
    return $UserCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatRoomCopyWith<$Res> implements $ChatRoomCopyWith<$Res> {
  factory _$$_ChatRoomCopyWith(
          _$_ChatRoom value, $Res Function(_$_ChatRoom) then) =
      __$$_ChatRoomCopyWithImpl<$Res>;
  @override
  $Res call(
      {int roomIdx,
      ChatProduct product,
      User sender,
      DateTime createAt,
      List<ChatMessage>? messages});

  @override
  $ChatProductCopyWith<$Res> get product;
  @override
  $UserCopyWith<$Res> get sender;
}

/// @nodoc
class __$$_ChatRoomCopyWithImpl<$Res> extends _$ChatRoomCopyWithImpl<$Res>
    implements _$$_ChatRoomCopyWith<$Res> {
  __$$_ChatRoomCopyWithImpl(
      _$_ChatRoom _value, $Res Function(_$_ChatRoom) _then)
      : super(_value, (v) => _then(v as _$_ChatRoom));

  @override
  _$_ChatRoom get _value => super._value as _$_ChatRoom;

  @override
  $Res call({
    Object? roomIdx = freezed,
    Object? product = freezed,
    Object? sender = freezed,
    Object? createAt = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_ChatRoom(
      roomIdx: roomIdx == freezed
          ? _value.roomIdx
          : roomIdx // ignore: cast_nullable_to_non_nullable
              as int,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ChatProduct,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as User,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      messages: messages == freezed
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatRoom implements _ChatRoom {
  const _$_ChatRoom(
      {required this.roomIdx,
      required this.product,
      required this.sender,
      required this.createAt,
      final List<ChatMessage>? messages})
      : _messages = messages;

  factory _$_ChatRoom.fromJson(Map<String, dynamic> json) =>
      _$$_ChatRoomFromJson(json);

  @override
  final int roomIdx;
  @override
  final ChatProduct product;
  @override
  final User sender;
  @override
  final DateTime createAt;
  final List<ChatMessage>? _messages;
  @override
  List<ChatMessage>? get messages {
    final value = _messages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ChatRoom(roomIdx: $roomIdx, product: $product, sender: $sender, createAt: $createAt, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatRoom &&
            const DeepCollectionEquality().equals(other.roomIdx, roomIdx) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality().equals(other.sender, sender) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roomIdx),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(sender),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  _$$_ChatRoomCopyWith<_$_ChatRoom> get copyWith =>
      __$$_ChatRoomCopyWithImpl<_$_ChatRoom>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatRoomToJson(this);
  }
}

abstract class _ChatRoom implements ChatRoom {
  const factory _ChatRoom(
      {required final int roomIdx,
      required final ChatProduct product,
      required final User sender,
      required final DateTime createAt,
      final List<ChatMessage>? messages}) = _$_ChatRoom;

  factory _ChatRoom.fromJson(Map<String, dynamic> json) = _$_ChatRoom.fromJson;

  @override
  int get roomIdx => throw _privateConstructorUsedError;
  @override
  ChatProduct get product => throw _privateConstructorUsedError;
  @override
  User get sender => throw _privateConstructorUsedError;
  @override
  DateTime get createAt => throw _privateConstructorUsedError;
  @override
  List<ChatMessage>? get messages => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatRoomCopyWith<_$_ChatRoom> get copyWith =>
      throw _privateConstructorUsedError;
}
