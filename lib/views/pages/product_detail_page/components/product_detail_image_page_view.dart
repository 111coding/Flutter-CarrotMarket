import 'package:flutter/material.dart';

import 'package:flutter_carrotmarket/core/size.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
    final imageFiles = [
      "https://images.unsplash.com/photo-1583679670198-85272e600ed2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGVsZWNhc3RlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
      "https://images.unsplash.com/photo-1583679670276-90aa14338851?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dGVsZWNhc3RlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    ];
    return PageView.builder(
      itemCount: imageFiles.length,
      onPageChanged: setCurrentImageIndex,
      itemBuilder: (context, index) {
        return Image.network(
          imageFiles[index],
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
            2,
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
