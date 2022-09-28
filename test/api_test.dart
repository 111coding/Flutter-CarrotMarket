import 'package:flutter_carrotmarket/data/address_api/address_api_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("VWORLD test", () async {
    final api = AddressApiRepository();
    final result = await api.findByName(location: "송정동");
    print(result);
  });
}
