import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/components/icon_menu.dart';

import 'components/card_icon_menu.dart';
import 'components/my_carrot_header.dart';

class MyCarrotPage extends StatelessWidget {
  const MyCarrotPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const MyCarrotHeader(),
        const SizedBox(height: 8.0),
        CardIconMenu(iconMenuList: iconMenu1),
        const SizedBox(height: 8.0),
        CardIconMenu(iconMenuList: iconMenu2),
        const SizedBox(height: 8.0),
        CardIconMenu(iconMenuList: iconMenu3),
      ],
    );
  }
}
