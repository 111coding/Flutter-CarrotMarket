import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';

class ProductWriteCategoryListItem extends StatelessWidget {
  const ProductWriteCategoryListItem({super.key, required this.category});

  final String category;

  @override
  Widget build(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 10),
        color: Colors.transparent, // Gesture 영역 전체!
        child: Row(
          children: [
            Text(
              category,
              style: theme().textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
