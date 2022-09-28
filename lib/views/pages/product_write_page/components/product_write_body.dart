import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_category_area.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_content_area.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_picture_area.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_price_area.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/components/product_write_title_area.dart';

class ProductWriteBody extends StatelessWidget {
  const ProductWriteBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          ProductWritePictureArea(),
          GreyLine(),
          ProductWriteTitleArea(),
          GreyLine(),
          ProductWriteCategoryArea(),
          GreyLine(),
          ProductWritePriceArea(),
          GreyLine(),
          ProductWriteContentArea(),
        ],
      ),
    );
  }
}
