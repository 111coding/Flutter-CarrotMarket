import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/provider_logger.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:jiffy/jiffy.dart';
import 'core/theme.dart';

void main() async {
  await Jiffy.locale("ko"); // date util local
  runApp(ProviderScope(
    observers: [ProviderLogger()],
    child: const CarrotMarketUI(),
  ));
}

class CarrotMarketUI extends StatelessWidget {
  const CarrotMarketUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      title: 'carrot_market_ui',
      debugShowCheckedModeBanner: false,
      routes: pages,
      initialRoute: Routes.main.path,
      theme: theme(),
    );
  }
}
