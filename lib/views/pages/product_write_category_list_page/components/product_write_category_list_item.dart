import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/data/product/model/product_category.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWriteCategoryListItem extends ConsumerWidget {
  const ProductWriteCategoryListItem({super.key, required this.category});

  final ProductCategory category;

  void onClick(BuildContext context, WidgetRef ref) {
    ref.read(productWriteViewModel.notifier).setCategory(category);
    context.back();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedCategory = ref.read(productWriteViewModel).category;
    final isSelected = selectedCategory?.idx == category.idx;
    return GestureDetector(
      onTap: () => onClick(context, ref),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 10),
        color: Colors.transparent, // Gesture 영역 전체!
        child: Row(
          children: [
            Text(
              category.category,
              style: isSelected ? theme().textTheme.bodyText1!.copyWith(color: Colors.orange) : theme().textTheme.bodyText1,
            ),
            if (isSelected) ...const [
              Spacer(),
              Icon(Icons.check, color: Colors.orange),
            ],
          ],
        ),
      ),
    );
  }
}
