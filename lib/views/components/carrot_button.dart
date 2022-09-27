import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class CarrotButton extends StatelessWidget {
  const CarrotButton({super.key, required this.text, this.onPressed, this.margin});

  final void Function()? onPressed;
  final String text;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? hPadding(),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed, // null일 경우 버튼 비활성화!
        child: Text(text),
      ),
    );
  }
}
