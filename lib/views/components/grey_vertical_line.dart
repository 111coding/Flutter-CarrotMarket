import 'package:flutter/material.dart';

class GreyVerticalLine extends StatelessWidget {
  const GreyVerticalLine({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: Colors.grey[300],
    );
  }
}
