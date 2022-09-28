import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/theme.dart';

class ProductWritePictureItem extends StatelessWidget {
  const ProductWritePictureItem({super.key});

  // x 버튼 터치영역때문에 크기 계산해서 사용!
  final itemPadding = 8.0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SizedBox.square(
          dimension: constraints.maxHeight - itemPadding,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _image("https://images.unsplash.com/photo-1583679670198-85272e600ed2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dGVsZWNhc3RlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60", constraints.maxHeight),
              _label(),
              _removeButton(),
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

  Widget _removeButton() {
    return Align(
      alignment: Alignment.topRight,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.cancel_rounded),
        ),
      ),
    );
  }
}
