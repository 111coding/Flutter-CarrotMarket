import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double dimension;
  final String imageUrl;

  const CircleImage({
    Key? key,
    required this.dimension,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: 1,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(1000),
        child: Image.network(
          imageUrl,
          width: dimension,
          height: dimension,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
