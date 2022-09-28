import 'package:flutter/material.dart';

class Icon24Button extends StatelessWidget {
  const Icon24Button({super.key, required this.iconData, this.onTap, this.color});

  final IconData iconData;
  final void Function()? onTap;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox.square(
        dimension: 24,
        child: Icon(iconData, color: color),
      ),
    );
  }
}
