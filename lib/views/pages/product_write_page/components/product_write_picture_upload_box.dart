import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class ProductWritePictureUploadBox extends StatelessWidget {
  const ProductWritePictureUploadBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: vPadding(verticalPadding: 8),
      child: GestureDetector(
        onTap: () {},
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: Colors.grey,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.camera_alt),
                Text("0/10"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
