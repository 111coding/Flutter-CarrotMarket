import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/views/components/carrot_button.dart';
import 'package:flutter_carrotmarket/views/components/grey_vertical_line.dart';
import 'package:flutter_carrotmarket/views/components/icon_24_button.dart';

class ProductDetailBottom extends StatelessWidget {
  const ProductDetailBottom({super.key});

  void _chat(BuildContext context) async {
    Routes.chat.push();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: 100,
        padding: hPadding(),
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(color: Colors.grey[300]!, blurRadius: 1, spreadRadius: 1)],
          // color: Colors.white,
          color: Colors.white,
        ),
        child: Column(
          children: [
            Expanded(child: _btnGroup(context)),
            eHeight(20),
          ],
        ),
      ),
    );
  }

  Widget _btnGroup(BuildContext context) {
    return Row(
      children: [
        _likeBtn(),
        eWidth(10),
        const GreyVerticalLine(height: 40),
        eWidth(10),
        _price(),
        _chatBtn(context),
      ],
    );
  }

  Widget _likeBtn() {
    return const Icon24Button(
      iconData: Icons.favorite,
      color: Colors.orange,
    );
  }

  Widget _price() {
    return Expanded(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "1,000 원",
          style: textTheme().headline2,
        ),
      ],
    ));
  }

  Widget _chatBtn(BuildContext context) {
    return SizedBox(
      width: 100,
      child: CarrotButton(
        text: "채팅하기",
        margin: EdgeInsets.zero,
        onPressed: () => _chat(context),
      ),
    );
  }
}
