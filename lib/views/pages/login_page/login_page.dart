import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/login_page/components/login_body.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: LoginBody(),
      ),
    );
  }
}
