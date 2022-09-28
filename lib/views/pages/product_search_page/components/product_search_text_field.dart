import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class ProductSearchTextField extends StatefulWidget with PreferredSizeWidget {
  const ProductSearchTextField({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<StatefulWidget> createState() => ProductSearchTextFieldState();
}

class ProductSearchTextFieldState extends State<ProductSearchTextField> {
  final textEditCtrl = TextEditingController();

  @override
  void dispose() {
    textEditCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 48, // icon size
      height: 50,
      padding: hPadding(),

      child: TextField(
        controller: textEditCtrl,
        onSubmitted: (v) {},
        decoration: InputDecoration(
          hintText: "기장군 근처에서 검색",
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0), borderSide: BorderSide.none),
          suffixIconConstraints: const BoxConstraints(maxHeight: 20),
          suffixIcon: Container(
            margin: hPadding(horizontalPadding: 10),
            child: const Icon(
              Icons.cancel,
              size: 20,
              color: Colors.grey,
            ),
          ),
        ),
        cursorColor: Colors.orangeAccent,
        maxLines: 1,
      ),
    );
  }
}
