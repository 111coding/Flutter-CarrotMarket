import 'package:flutter/material.dart';

import 'package:flutter_carrotmarket/core/size.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/view_model/product_detail_view_model.dart';

class ProductDetailImagePageView extends ConsumerStatefulWidget {
  const ProductDetailImagePageView({Key? key}) : super(key: key);

  @override
  ProductDetailImagePageViewState createState() => ProductDetailImagePageViewState();
}

class ProductDetailImagePageViewState extends ConsumerState<ProductDetailImagePageView> {
  int currentImageIndex = 0;

  void setCurrentImageIndex(int v) {
    currentImageIndex = v;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _images(),
        _indicator(),
      ],
    );
  }

  Widget _images() {
    final imageFiles = ref.watch(productDetailViewModel)?.product.imageFiles;
    return PageView.builder(
      itemCount: imageFiles!.length,
      onPageChanged: setCurrentImageIndex,
      itemBuilder: (context, index) {
        return Image.network(
          imageFiles[index].url,
          fit: BoxFit.cover,
        );
      },
    );
  }

  Widget _indicator() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            ref.watch(productDetailViewModel)!.product.imageFiles!.length,
            (index) => Container(
              width: 6,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: index == currentImageIndex ? Colors.white : Colors.white54,
              ),
              margin: hPadding(horizontalPadding: 4),
            ),
          ),
        ),
      ),
    );
  }
}
