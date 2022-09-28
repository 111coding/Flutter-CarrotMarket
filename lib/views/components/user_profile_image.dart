import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/circle_image.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    super.key,
    this.imgUrl,
    this.size = 50,
  });

  final String? imgUrl;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: Colors.grey[200]!, shape: BoxShape.circle),
      child: imgUrl == null
          ? const Icon(Icons.person)
          : CircleImage(
              imageUrl: imgUrl!,
              dimension: size,
            ),
    );
  }
}
