import 'package:flutter/material.dart';

class AddressSelectAppBar extends AppBar implements PreferredSizeWidget {
  AddressSelectAppBar({super.key});

  @override
  Widget? get title => const Text("내 동네 설정하기");

  @override
  bool? get centerTitle => true;
}
