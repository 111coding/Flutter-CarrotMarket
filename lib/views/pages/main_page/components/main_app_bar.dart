import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/chat_list_page/conponents/chat_list_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/my_carrot_page/components/my_carrot_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/product_page/components/product_app_bar.dart';

AppBar mainAppBar(int index) {
  switch (index) {
    case 0:
      return ProductAppBar();
    case 1:
      return ChatListAppBar();
  }
  return MyCarrotAppBar();
}
