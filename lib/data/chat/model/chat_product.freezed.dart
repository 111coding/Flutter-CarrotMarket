// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatProduct _$ChatProductFromJson(Map<String, dynamic> json) {
  return _ChatProduct.fromJson(json);
}

/// @nodoc
mixin _$ChatProduct {
  int get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  User get user => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatProductCopyWith<ChatProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatProductCopyWith<$Res> {
  factory $ChatProductCopyWith(
          ChatProduct value, $Res Function(ChatProduct) then) =
      _$ChatProductCopyWithImpl<$Res>;
  $Res call({int idx, String title, User user, Address address, int price});

  $UserCopyWith<$Res> get user;
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$ChatProductCopyWithImpl<$Res> implements $ChatProductCopyWith<$Res> {
  _$ChatProductCopyWithImpl(this._value, this._then);

  final ChatProduct _value;
  // ignore: unused_field
  final $Res Function(ChatProduct) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? user = freezed,
    Object? address = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatProductCopyWith<$Res>
    implements $ChatProductCopyWith<$Res> {
  factory _$$_ChatProductCopyWith(
          _$_ChatProduct value, $Res Function(_$_ChatProduct) then) =
      __$$_ChatProductCopyWithImpl<$Res>;
  @override
  $Res call({int idx, String title, User user, Address address, int price});

  @override
  $UserCopyWith<$Res> get user;
  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$_ChatProductCopyWithImpl<$Res> extends _$ChatProductCopyWithImpl<$Res>
    implements _$$_ChatProductCopyWith<$Res> {
  __$$_ChatProductCopyWithImpl(
      _$_ChatProduct _value, $Res Function(_$_ChatProduct) _then)
      : super(_value, (v) => _then(v as _$_ChatProduct));

  @override
  _$_ChatProduct get _value => super._value as _$_ChatProduct;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? user = freezed,
    Object? address = freezed,
    Object? price = freezed,
  }) {
    return _then(_$_ChatProduct(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatProduct implements _ChatProduct {
  const _$_ChatProduct(
      {required this.idx,
      required this.title,
      required this.user,
      required this.address,
      required this.price});

  factory _$_ChatProduct.fromJson(Map<String, dynamic> json) =>
      _$$_ChatProductFromJson(json);

  @override
  final int idx;
  @override
  final String title;
  @override
  final User user;
  @override
  final Address address;
  @override
  final int price;

  @override
  String toString() {
    return 'ChatProduct(idx: $idx, title: $title, user: $user, address: $address, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatProduct &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.price, price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(price));

  @JsonKey(ignore: true)
  @override
  _$$_ChatProductCopyWith<_$_ChatProduct> get copyWith =>
      __$$_ChatProductCopyWithImpl<_$_ChatProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatProductToJson(this);
  }
}

abstract class _ChatProduct implements ChatProduct {
  const factory _ChatProduct(
      {required final int idx,
      required final String title,
      required final User user,
      required final Address address,
      required final int price}) = _$_ChatProduct;

  factory _ChatProduct.fromJson(Map<String, dynamic> json) =
      _$_ChatProduct.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  User get user => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ChatProductCopyWith<_$_ChatProduct> get copyWith =>
      throw _privateConstructorUsedError;
}
