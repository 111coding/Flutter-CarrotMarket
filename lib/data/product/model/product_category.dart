import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_category.freezed.dart';
part 'product_category.g.dart';

// 이름 겹칠거 우려해서 model 붙힘!
@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    required int idx,
    required String category,
    // required String imgSrc, // TODO
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) => _$ProductCategoryFromJson(json);
}
