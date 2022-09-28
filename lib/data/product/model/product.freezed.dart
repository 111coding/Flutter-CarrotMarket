// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  Address get address => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  int get likeCnt => throw _privateConstructorUsedError;
  DateTime get updateAt => throw _privateConstructorUsedError;
  DateTime get createAt =>
      throw _privateConstructorUsedError; // ========== Only List Begin ==========
  FileModel? get thumbnail =>
      throw _privateConstructorUsedError; // ========== Only List End ==========
// ========== Only Detail Begin ==========
  String? get content => throw _privateConstructorUsedError;
  List<FileModel>? get imageFiles => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool? get myLike => throw _privateConstructorUsedError;
  ProductCategory? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res>;
  $Res call(
      {int idx,
      String title,
      Address address,
      int price,
      int likeCnt,
      DateTime updateAt,
      DateTime createAt,
      FileModel? thumbnail,
      String? content,
      List<FileModel>? imageFiles,
      User? user,
      bool? myLike,
      ProductCategory? category});

  $AddressCopyWith<$Res> get address;
  $FileModelCopyWith<$Res>? get thumbnail;
  $UserCopyWith<$Res>? get user;
  $ProductCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$ProductCopyWithImpl<$Res> implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  final Product _value;
  // ignore: unused_field
  final $Res Function(Product) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? address = freezed,
    Object? price = freezed,
    Object? likeCnt = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? thumbnail = freezed,
    Object? content = freezed,
    Object? imageFiles = freezed,
    Object? user = freezed,
    Object? myLike = freezed,
    Object? category = freezed,
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
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      likeCnt: likeCnt == freezed
          ? _value.likeCnt
          : likeCnt // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as FileModel?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFiles: imageFiles == freezed
          ? _value.imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      myLike: myLike == freezed
          ? _value.myLike
          : myLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ));
  }

  @override
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value));
    });
  }

  @override
  $FileModelCopyWith<$Res>? get thumbnail {
    if (_value.thumbnail == null) {
      return null;
    }

    return $FileModelCopyWith<$Res>(_value.thumbnail!, (value) {
      return _then(_value.copyWith(thumbnail: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $ProductCategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $ProductCategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value));
    });
  }
}

/// @nodoc
abstract class _$$_ProductCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$_ProductCopyWith(
          _$_Product value, $Res Function(_$_Product) then) =
      __$$_ProductCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idx,
      String title,
      Address address,
      int price,
      int likeCnt,
      DateTime updateAt,
      DateTime createAt,
      FileModel? thumbnail,
      String? content,
      List<FileModel>? imageFiles,
      User? user,
      bool? myLike,
      ProductCategory? category});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $FileModelCopyWith<$Res>? get thumbnail;
  @override
  $UserCopyWith<$Res>? get user;
  @override
  $ProductCategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_ProductCopyWithImpl<$Res> extends _$ProductCopyWithImpl<$Res>
    implements _$$_ProductCopyWith<$Res> {
  __$$_ProductCopyWithImpl(_$_Product _value, $Res Function(_$_Product) _then)
      : super(_value, (v) => _then(v as _$_Product));

  @override
  _$_Product get _value => super._value as _$_Product;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? address = freezed,
    Object? price = freezed,
    Object? likeCnt = freezed,
    Object? updateAt = freezed,
    Object? createAt = freezed,
    Object? thumbnail = freezed,
    Object? content = freezed,
    Object? imageFiles = freezed,
    Object? user = freezed,
    Object? myLike = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_Product(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      likeCnt: likeCnt == freezed
          ? _value.likeCnt
          : likeCnt // ignore: cast_nullable_to_non_nullable
              as int,
      updateAt: updateAt == freezed
          ? _value.updateAt
          : updateAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createAt: createAt == freezed
          ? _value.createAt
          : createAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      thumbnail: thumbnail == freezed
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as FileModel?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      imageFiles: imageFiles == freezed
          ? _value._imageFiles
          : imageFiles // ignore: cast_nullable_to_non_nullable
              as List<FileModel>?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      myLike: myLike == freezed
          ? _value.myLike
          : myLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      category: category == freezed
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as ProductCategory?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Product implements _Product {
  const _$_Product(
      {required this.idx,
      required this.title,
      required this.address,
      required this.price,
      required this.likeCnt,
      required this.updateAt,
      required this.createAt,
      this.thumbnail,
      this.content,
      final List<FileModel>? imageFiles,
      this.user,
      this.myLike,
      this.category})
      : _imageFiles = imageFiles;

  factory _$_Product.fromJson(Map<String, dynamic> json) =>
      _$$_ProductFromJson(json);

  @override
  final int idx;
  @override
  final String title;
  @override
  final Address address;
  @override
  final int price;
  @override
  final int likeCnt;
  @override
  final DateTime updateAt;
  @override
  final DateTime createAt;
// ========== Only List Begin ==========
  @override
  final FileModel? thumbnail;
// ========== Only List End ==========
// ========== Only Detail Begin ==========
  @override
  final String? content;
  final List<FileModel>? _imageFiles;
  @override
  List<FileModel>? get imageFiles {
    final value = _imageFiles;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? user;
  @override
  final bool? myLike;
  @override
  final ProductCategory? category;

  @override
  String toString() {
    return 'Product(idx: $idx, title: $title, address: $address, price: $price, likeCnt: $likeCnt, updateAt: $updateAt, createAt: $createAt, thumbnail: $thumbnail, content: $content, imageFiles: $imageFiles, user: $user, myLike: $myLike, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Product &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality().equals(other.likeCnt, likeCnt) &&
            const DeepCollectionEquality().equals(other.updateAt, updateAt) &&
            const DeepCollectionEquality().equals(other.createAt, createAt) &&
            const DeepCollectionEquality().equals(other.thumbnail, thumbnail) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other._imageFiles, _imageFiles) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.myLike, myLike) &&
            const DeepCollectionEquality().equals(other.category, category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(likeCnt),
      const DeepCollectionEquality().hash(updateAt),
      const DeepCollectionEquality().hash(createAt),
      const DeepCollectionEquality().hash(thumbnail),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(_imageFiles),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(myLike),
      const DeepCollectionEquality().hash(category));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      __$$_ProductCopyWithImpl<_$_Product>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductToJson(this);
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int idx,
      required final String title,
      required final Address address,
      required final int price,
      required final int likeCnt,
      required final DateTime updateAt,
      required final DateTime createAt,
      final FileModel? thumbnail,
      final String? content,
      final List<FileModel>? imageFiles,
      final User? user,
      final bool? myLike,
      final ProductCategory? category}) = _$_Product;

  factory _Product.fromJson(Map<String, dynamic> json) = _$_Product.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  Address get address => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  int get likeCnt => throw _privateConstructorUsedError;
  @override
  DateTime get updateAt => throw _privateConstructorUsedError;
  @override
  DateTime get createAt => throw _privateConstructorUsedError;
  @override // ========== Only List Begin ==========
  FileModel? get thumbnail => throw _privateConstructorUsedError;
  @override // ========== Only List End ==========
// ========== Only Detail Begin ==========
  String? get content => throw _privateConstructorUsedError;
  @override
  List<FileModel>? get imageFiles => throw _privateConstructorUsedError;
  @override
  User? get user => throw _privateConstructorUsedError;
  @override
  bool? get myLike => throw _privateConstructorUsedError;
  @override
  ProductCategory? get category => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCopyWith<_$_Product> get copyWith =>
      throw _privateConstructorUsedError;
}
