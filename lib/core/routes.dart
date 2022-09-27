import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/login_page/login_page.dart';

typedef PageBuilder = Widget Function(BuildContext context);

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

enum Routes {
  login("/login", LoginPage());

  final String path;
  final Widget page;
  const Routes(this.path, this.page);
}

final pages = generatePages();

Map<String, PageBuilder> generatePages() {
  final map = <String, PageBuilder>{};
  for (var e in Routes.values) {
    map[e.path] = (BuildContext context) => e.page;
  }
  return map;
}

extension RoutesExtension on Routes {
  Future<T?> push<T extends Object?>({Object? arguments}) async {
    return await Navigator.of(navigatorKey.currentContext!).pushNamed<T?>(path, arguments: arguments);
  }

  Future<T?> popAndPush<T extends Object?, TO extends Object?>({TO? result, Object? arguments}) async {
    return await Navigator.of(navigatorKey.currentContext!).popAndPushNamed<T, TO>(path, result: result, arguments: arguments);
  }

  Future<T?> pushAndRemoveAll<T extends Object?>({Object? arguments}) async {
    return await Navigator.of(navigatorKey.currentContext!).pushNamedAndRemoveUntil<T>(path, (route) => false);
  }
}

extension BuildContextExtension on BuildContext {
  void back() => Navigator.of(this).pop();
  dynamic arguments() {
    return ModalRoute.of(this)?.settings.arguments;
  }
}
