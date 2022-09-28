import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/data/file/model/file_model.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWritePictureItem extends ConsumerWidget {
  const ProductWritePictureItem({super.key, required this.item});

  final FileModel item;

  // x 버튼 터치영역때문에 크기 계산해서 사용!
  final itemPadding = 8.0;

  void _remove(WidgetRef ref) {
    ref.watch(productWriteViewModel.notifier).removeImage(item);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox.square(
          dimension: constraints.maxHeight - itemPadding,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _image(item.url, constraints.maxHeight),
              if (ref.watch(productWriteViewModel).imageFiles.indexOf(item) == 0) _label(),
              _removeButton(ref),
            ],
          ),
        );
      },
    );
  }

  Widget _image(String url, double dimension) {
    return SizedBox.square(
      dimension: dimension - itemPadding * 2,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.network(url, fit: BoxFit.cover),
      ),
    );
  }

  Widget _label() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(bottom: itemPadding * 2),
        child: Text(
          "대표사진",
          style: textTheme().bodyText2!.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  Widget _removeButton(WidgetRef ref) {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () => _remove(ref),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.cancel_rounded),
        ),
      ),
    );
  }
}
