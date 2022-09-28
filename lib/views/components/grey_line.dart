import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class GreyLine extends StatelessWidget {
  const GreyLine({
    super.key,
    this.margin = kHorizontalPadding,
  });

  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: margin),
      width: double.infinity,
      height: 1,
      color: Colors.grey[300],
    );
  }
}
