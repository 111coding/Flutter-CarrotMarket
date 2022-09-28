import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/write_field.dart';

class ProductWriteContentArea extends StatefulWidget {
  const ProductWriteContentArea({super.key});

  @override
  State<StatefulWidget> createState() => ProductWriteContentAreaState();
}

class ProductWriteContentAreaState extends State<ProductWriteContentArea> {
  final textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WriteField(
      controller: textCtrl,
      hint: "게시글 내용을 작성해주세요.(가품 및 판매금지품목은 게시가 제한될 수 있어요.)",
      maxLine: null,
    );
  }
}
