import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/data/file/model/file_model.dart';
import 'package:flutter_carrotmarket/data/file/repository/file_repository.dart';
import 'package:flutter_carrotmarket/data/product/dto/product_request_dto.dart';
import 'package:flutter_carrotmarket/data/product/model/product_category.dart';
import 'package:flutter_carrotmarket/data/product/repository/product_repository.dart';
import 'package:flutter_carrotmarket/utils/image_utils.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_type_provider.dart';
import 'package:riverpod/riverpod.dart';

// 페이지 나갈 때 자동으로 없어지게!
// 수정, 글쓰기 공통
final productWriteViewModel = StateNotifierProvider.autoDispose<ProductWriteViewModel, ProductWriteViewState>((ref) {
  if (ref.read(productWriteTypeProvider).type == ProductWriteType.write) {
    return ProductWriteViewModel(ProductWriteViewState(), ref.read);
  }

  final product = ref.read(productDetailViewModel)!.product;
  final viewModel = ProductWriteViewModel(
    ProductWriteViewState(
      imageFiles: product.imageFiles ?? [],
      category: product.category,
    ),
    ref.read,
  );

  viewModel.titleCtrl.text = product.title;
  viewModel.priceCtrl.text = "${product.price}";
  viewModel.contentCtrl.text = product.content!;

  return viewModel;
});

// form field는 TextEditController에서! 나머지는 view 에 영향을 끼치는 상태값!
class ProductWriteViewState {
  final List<FileModel> imageFiles;
  final ProductCategory? category;

  ProductWriteViewState({
    this.imageFiles = const [],
    this.category,
  });

  ProductWriteViewState copyWith({
    bool? priceProposal,
    List<FileModel>? imageFiles,
    ProductCategory? category,
  }) {
    return ProductWriteViewState(
      imageFiles: imageFiles ?? this.imageFiles,
      category: category ?? this.category,
    );
  }
}

class ProductWriteViewModel extends StateNotifier<ProductWriteViewState> {
  ProductWriteViewModel(super.state, this._read);

  final titleCtrl = TextEditingController();
  final priceCtrl = TextEditingController();
  final contentCtrl = TextEditingController();

  final Reader _read;

  Future<String?> uploadImage() async {
    if (state.imageFiles.length == 10) return "10장까지 업로드 가능합니다";
    String? path = await ImageUtils.getPathFromGallery();
    if (path == null) return null; // 사용자가 사진선택 취소한 경우
    final imageFile = await _read(fileRepository).upload(filePath: path);
    if (imageFile == null) return "다시 시도해 주세요"; // 서버에러
    state = state.copyWith(imageFiles: [...state.imageFiles, imageFile]);
  }

  void removeImage(FileModel imageFile) async {
    state = state.copyWith(
      imageFiles: state.imageFiles.where((e) => e.idx != imageFile.idx).toList(),
    );
  }

  void setCategory(ProductCategory category) {
    state = state.copyWith(category: category);
  }

  String? _validate() {
    final title = titleCtrl.text.trim();
    if (title.isEmpty) return "제목을 입력해 주세요";
    final content = contentCtrl.text.trim();
    if (content.isEmpty) return "내용을 입력해 주세요";
    if (state.category == null) return "카테고리를 선택해 주세요";

    return null;
  }

  ProductRequestDto _generateDto() {
    final title = titleCtrl.text.trim();
    final content = contentCtrl.text.trim();
    final priceStr = priceCtrl.text.replaceAll(",", "");
    final price = priceStr.isEmpty ? 0 : int.parse(priceStr);

    final idx = _read(productWriteTypeProvider).type == ProductWriteType.edit ? _read(productDetailIdxProvider).idx : 0;

    return ProductRequestDto(
      idx: idx,
      title: title,
      content: content,
      price: price,
      imageFileIdxList: state.imageFiles.map((e) => e.idx).toList(),
      addressIdx: _read(addressProvider).first.idx,
      categoryIdx: state.category!.idx,
    );
  }

  Future<String?> submit() async {
    final validateStr = _validate();
    if (validateStr != null) return validateStr;

    final product = _generateDto();

    bool? result;

    if (_read(productWriteTypeProvider).type == ProductWriteType.write) {
      result = await _read(productRepository).saveProduct(product: product);
    } else {
      result = await _read(productRepository).updateProduct(product: product);
      await _read(productDetailViewModel.notifier).fetchDetail();
    }

    if (!(result ?? false)) return "다시 시도해 주세요";

    return null;
  }
}
