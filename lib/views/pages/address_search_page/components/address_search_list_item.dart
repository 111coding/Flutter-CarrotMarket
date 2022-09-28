import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class AddressSearchListItem extends StatelessWidget {
  const AddressSearchListItem({
    super.key,
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 10),
        color: Colors.transparent, // Gesture 영역 전체!
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
