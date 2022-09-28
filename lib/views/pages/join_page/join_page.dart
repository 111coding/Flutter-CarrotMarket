import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/join_page/components/join_body.dart';

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: JoinBody(),
      ),
    );
  }
}
