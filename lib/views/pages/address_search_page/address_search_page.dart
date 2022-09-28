import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/components/address_search_body.dart';

class AddressSearchPage extends StatelessWidget {
  const AddressSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: AddressSearchBody(),
      ),
    );
  }
}
