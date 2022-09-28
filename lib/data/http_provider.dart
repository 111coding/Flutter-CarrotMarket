import 'dart:convert';

import 'package:flutter_carrotmarket/data/auth/provider/auth_provider.dart';
import 'package:http/http.dart';
import 'package:riverpod/riverpod.dart';

final httpProvider = Provider((ref) => HttpConnector(ref));

class HttpConnector {
  HttpConnector(this._ref);

  final Ref _ref;

  static const host = "http://localhost:8080";

  final authRefreshExpiredCode = 403;

  final Client _client = Client();
  final Map<String, String> _defaultHeader = {"Content-Type": "application/json; charset=utf-8"};
  Map<String, String> get requsetHeader {
    final jwt = _ref.read(authProvider).jwt;
    return jwt == null ? _defaultHeader : {..._defaultHeader, "Authorization": jwt};
  }

  Future<Response> get(String path, {Map<String, dynamic>? query}) async {
    Response response = await _get(path, query: query);
    if (response.statusCode == authRefreshExpiredCode) {
      await _ref.read(authProvider).refresh();
      response = await _get(path, query: query);
    }
    return response;
  }

  Future<Response> post(String path, {Map<String, dynamic>? body}) async {
    Response response = await _post(path, body: body);
    if (response.statusCode == authRefreshExpiredCode) {
      await _ref.read(authProvider).refresh();
      response = await _post(path, body: body);
    }
    return response;
  }

  Future<Response> delete(String path, {Map<String, dynamic>? body}) async {
    Response response = await _delete(path, body: body);
    if (response.statusCode == authRefreshExpiredCode) {
      await _ref.read(authProvider).refresh();
      response = await _delete(path, body: body);
    }
    return response;
  }

  Future<Response> _get(String path, {Map<String, dynamic>? query}) async {
    var queryString = query?.entries.map((e) => "${e.key}=${e.value}&").toList().join();
    String requestUrl = "$host$path?$queryString";
    var response = await _client.get(
      Uri.parse(requestUrl),
      headers: requsetHeader,
    );

    return response;
  }

  Future<Response> _post(String path, {Map<String, dynamic>? body}) async {
    String requestUrl = "$host$path";

    var response = await _client.post(
      Uri.parse(requestUrl),
      body: jsonEncode(body),
      headers: requsetHeader,
    );

    return response;
  }

  Future<Response> _delete(String path, {Map<String, dynamic>? body}) async {
    String requestUrl = "$host$path";

    var response = await _client.delete(
      Uri.parse(requestUrl),
      body: jsonEncode(body),
      headers: requsetHeader,
    );

    return response;
  }
}
