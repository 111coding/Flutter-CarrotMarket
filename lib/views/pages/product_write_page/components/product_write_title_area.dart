import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/write_field.dart';

class ProductWriteTitleArea extends StatefulWidget {
  const ProductWriteTitleArea({super.key});

  @override
  State<StatefulWidget> createState() => ProductWriteTitleAreaState();
}

class ProductWriteTitleAreaState extends State<ProductWriteTitleArea> {
  final textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return WriteField(
      controller: textCtrl,
      hint: "글 제목",
    );
  }
}
