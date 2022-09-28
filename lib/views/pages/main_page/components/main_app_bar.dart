import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_app_bar.dart';

AppBar mainAppBar(int index) {
  switch (index) {
    case 0:
      return ProductAppBar();
  }
  return AppBar();
}
