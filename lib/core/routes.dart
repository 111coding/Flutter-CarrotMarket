import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/address_search_page.dart';
import 'package:flutter_carrotmarket/views/pages/address_select_page/address_select_page.dart';
import 'package:flutter_carrotmarket/views/pages/chat_page/chat_page.dart';
import 'package:flutter_carrotmarket/views/pages/join_page/join_page.dart';
import 'package:flutter_carrotmarket/views/pages/login_page/login_page.dart';
import 'package:flutter_carrotmarket/views/pages/main_page/main_page.dart';
import 'package:flutter_carrotmarket/views/pages/product_detail_page/product_detail_page.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/product_search_page.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_category_list_page/product_write_category_list_page.dart';
import 'package:flutter_carrotmarket/views/pages/product_write_page/product_write_page.dart';

typedef PageBuilder = Widget Function(BuildContext context);

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

enum Routes {
  main("/main", MainPage()),
  login("/login", LoginPage()),
  addressSearch("/addressSearch", AddressSearchPage()),
  addressSelect("/addressSelect", AddressSelectPage()),
  join("/join", JoinPage()),
  productWrite("/productWrite", ProductWritePage()),
  productCategoryList("/productCategoryList", ProductWriteCategoryListPage()),
  productDetail("/productDetail", ProductDetailPage()),
  productSearch("/productSearch", ProductSearchPage()),
  chat("/chat", ChatPage());

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
