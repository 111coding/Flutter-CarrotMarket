import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/address_select_page/components/address_select_app_bar.dart';
import 'package:flutter_carrotmarket/views/pages/address_select_page/components/address_select_body.dart';

class AddressSelectPage extends StatelessWidget {
  const AddressSelectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AddressSelectAppBar(),
      body: const AddressSelectBody(),
    );
  }
}
