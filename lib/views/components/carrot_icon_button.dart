import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class CarrotIconButton extends StatelessWidget {
  const CarrotIconButton({
    super.key,
    required this.text,
    this.onPressed,
    this.icon,
  });

  final void Function()? onPressed;
  final String text;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: hPadding(),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed, // null일 경우 버튼 비활성화!
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              icon!,
              eWidth(5),
            ],
            Text(text),
          ],
        ),
      ),
    );
  }
}
