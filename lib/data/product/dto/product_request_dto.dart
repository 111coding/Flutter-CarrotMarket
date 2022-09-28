import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_request_dto.freezed.dart';
part 'product_request_dto.g.dart';

@freezed
class ProductRequestDto with _$ProductRequestDto {
  const factory ProductRequestDto({
    required int idx,
    required String title,
    required String content,
    required int price,
    required List<int> imageFileIdxList,
    required int addressIdx,
    required int categoryIdx,
  }) = _ProductRequestDto;

  factory ProductRequestDto.fromJson(Map<String, dynamic> json) => _$ProductRequestDtoFromJson(json);
}
