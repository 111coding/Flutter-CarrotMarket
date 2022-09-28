import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/data/user/model/user.dart';
import 'package:flutter_carrotmarket/views/components/circle_image.dart';

class UserProfileImage extends StatelessWidget {
  const UserProfileImage({
    super.key,
    this.user,
    this.size = 50,
  });

  final User? user;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: Colors.grey[200]!, shape: BoxShape.circle),
      child: user?.profileImage?.url == null
          ? const Icon(Icons.person)
          : CircleImage(
              imageUrl: user!.profileImage!.url,
              dimension: size,
            ),
    );
  }
}
