import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/price_field.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/view_model/product_write_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductWritePriceArea extends ConsumerWidget {
  const ProductWritePriceArea({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        Expanded(
          child: PriceField(
            controller: ref.watch(productWriteViewModel.notifier).priceCtrl,
          ),
        ),
        eWidth(kHorizontalPadding),
      ],
    );
  }
}
