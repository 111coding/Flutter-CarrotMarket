// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProductRequestDto _$ProductRequestDtoFromJson(Map<String, dynamic> json) {
  return _ProductRequestDto.fromJson(json);
}

/// @nodoc
mixin _$ProductRequestDto {
  int get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get price => throw _privateConstructorUsedError;
  List<int> get imageFileIdxList => throw _privateConstructorUsedError;
  int get addressIdx => throw _privateConstructorUsedError;
  int get categoryIdx => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductRequestDtoCopyWith<ProductRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductRequestDtoCopyWith<$Res> {
  factory $ProductRequestDtoCopyWith(
          ProductRequestDto value, $Res Function(ProductRequestDto) then) =
      _$ProductRequestDtoCopyWithImpl<$Res>;
  $Res call(
      {int idx,
      String title,
      String content,
      int price,
      List<int> imageFileIdxList,
      int addressIdx,
      int categoryIdx});
}

/// @nodoc
class _$ProductRequestDtoCopyWithImpl<$Res>
    implements $ProductRequestDtoCopyWith<$Res> {
  _$ProductRequestDtoCopyWithImpl(this._value, this._then);

  final ProductRequestDto _value;
  // ignore: unused_field
  final $Res Function(ProductRequestDto) _then;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? price = freezed,
    Object? imageFileIdxList = freezed,
    Object? addressIdx = freezed,
    Object? categoryIdx = freezed,
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
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageFileIdxList: imageFileIdxList == freezed
          ? _value.imageFileIdxList
          : imageFileIdxList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      addressIdx: addressIdx == freezed
          ? _value.addressIdx
          : addressIdx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryIdx: categoryIdx == freezed
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductRequestDtoCopyWith<$Res>
    implements $ProductRequestDtoCopyWith<$Res> {
  factory _$$_ProductRequestDtoCopyWith(_$_ProductRequestDto value,
          $Res Function(_$_ProductRequestDto) then) =
      __$$_ProductRequestDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int idx,
      String title,
      String content,
      int price,
      List<int> imageFileIdxList,
      int addressIdx,
      int categoryIdx});
}

/// @nodoc
class __$$_ProductRequestDtoCopyWithImpl<$Res>
    extends _$ProductRequestDtoCopyWithImpl<$Res>
    implements _$$_ProductRequestDtoCopyWith<$Res> {
  __$$_ProductRequestDtoCopyWithImpl(
      _$_ProductRequestDto _value, $Res Function(_$_ProductRequestDto) _then)
      : super(_value, (v) => _then(v as _$_ProductRequestDto));

  @override
  _$_ProductRequestDto get _value => super._value as _$_ProductRequestDto;

  @override
  $Res call({
    Object? idx = freezed,
    Object? title = freezed,
    Object? content = freezed,
    Object? price = freezed,
    Object? imageFileIdxList = freezed,
    Object? addressIdx = freezed,
    Object? categoryIdx = freezed,
  }) {
    return _then(_$_ProductRequestDto(
      idx: idx == freezed
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      imageFileIdxList: imageFileIdxList == freezed
          ? _value._imageFileIdxList
          : imageFileIdxList // ignore: cast_nullable_to_non_nullable
              as List<int>,
      addressIdx: addressIdx == freezed
          ? _value.addressIdx
          : addressIdx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryIdx: categoryIdx == freezed
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductRequestDto implements _ProductRequestDto {
  const _$_ProductRequestDto(
      {required this.idx,
      required this.title,
      required this.content,
      required this.price,
      required final List<int> imageFileIdxList,
      required this.addressIdx,
      required this.categoryIdx})
      : _imageFileIdxList = imageFileIdxList;

  factory _$_ProductRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProductRequestDtoFromJson(json);

  @override
  final int idx;
  @override
  final String title;
  @override
  final String content;
  @override
  final int price;
  final List<int> _imageFileIdxList;
  @override
  List<int> get imageFileIdxList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageFileIdxList);
  }

  @override
  final int addressIdx;
  @override
  final int categoryIdx;

  @override
  String toString() {
    return 'ProductRequestDto(idx: $idx, title: $title, content: $content, price: $price, imageFileIdxList: $imageFileIdxList, addressIdx: $addressIdx, categoryIdx: $categoryIdx)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductRequestDto &&
            const DeepCollectionEquality().equals(other.idx, idx) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality().equals(other.price, price) &&
            const DeepCollectionEquality()
                .equals(other._imageFileIdxList, _imageFileIdxList) &&
            const DeepCollectionEquality()
                .equals(other.addressIdx, addressIdx) &&
            const DeepCollectionEquality()
                .equals(other.categoryIdx, categoryIdx));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(idx),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(price),
      const DeepCollectionEquality().hash(_imageFileIdxList),
      const DeepCollectionEquality().hash(addressIdx),
      const DeepCollectionEquality().hash(categoryIdx));

  @JsonKey(ignore: true)
  @override
  _$$_ProductRequestDtoCopyWith<_$_ProductRequestDto> get copyWith =>
      __$$_ProductRequestDtoCopyWithImpl<_$_ProductRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProductRequestDtoToJson(this);
  }
}

abstract class _ProductRequestDto implements ProductRequestDto {
  const factory _ProductRequestDto(
      {required final int idx,
      required final String title,
      required final String content,
      required final int price,
      required final List<int> imageFileIdxList,
      required final int addressIdx,
      required final int categoryIdx}) = _$_ProductRequestDto;

  factory _ProductRequestDto.fromJson(Map<String, dynamic> json) =
      _$_ProductRequestDto.fromJson;

  @override
  int get idx => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get content => throw _privateConstructorUsedError;
  @override
  int get price => throw _privateConstructorUsedError;
  @override
  List<int> get imageFileIdxList => throw _privateConstructorUsedError;
  @override
  int get addressIdx => throw _privateConstructorUsedError;
  @override
  int get categoryIdx => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_ProductRequestDtoCopyWith<_$_ProductRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
