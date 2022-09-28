import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/price_field.dart';

class ProductWritePriceArea extends StatefulWidget {
  const ProductWritePriceArea({super.key});

  @override
  State<StatefulWidget> createState() => ProductWritePriceAreaState();
}

class ProductWritePriceAreaState extends State<ProductWritePriceArea> {
  final textCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PriceField(
            controller: textCtrl,
          ),
        ),
        eWidth(kHorizontalPadding),
      ],
    );
  }
}
