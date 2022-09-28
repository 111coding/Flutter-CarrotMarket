import 'dart:convert';

import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/http_provider.dart';
import 'package:riverpod/riverpod.dart';

final addressRepository = Provider<AddressRepository>((ref) => AddressRepository(ref));

class AddressRepository {
  AddressRepository(this._ref);

  final Ref _ref;

  final _endPoint = "/api/user/address";

  Future<List<Address>?> fetchMyAddresses() async {
    final response = await _ref.read(httpProvider).get(_endPoint);
    if (response.statusCode == 200) {
      return (jsonDecode(response.body)["content"] as List)
          .map(
            (e) => Address.fromJson(e),
          )
          .toList();
    }
    return null;
  }

  Future<bool> addAddress({required String addressFullName}) async {
    final response = await _ref.read(httpProvider).post(_endPoint, body: {"addressFullName": addressFullName});
    return response.statusCode == 201;
  }

  Future<bool> removeAddress({required int idx}) async {
    final response = await _ref.read(httpProvider).delete("$_endPoint/$idx");
    return response.statusCode == 200;
  }

  Future<bool> changeDefaultYn({required int idx}) async {
    final response = await _ref.read(httpProvider).post("$_endPoint/defaultYn/$idx");
    return response.statusCode == 200;
  }
}
