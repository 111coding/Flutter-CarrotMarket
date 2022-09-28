import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/address/repository/address_repository.dart';
import 'package:flutter_carrotmarket/data/address_api/address_api_repository.dart';
import 'package:riverpod/riverpod.dart';

final addressProvider = StateNotifierProvider<AddressProvider, List<Address>>((ref) => AddressProvider([], ref));

class AddressProvider extends StateNotifier<List<Address>> {
  AddressProvider(super.state, this._ref);

  final Ref _ref;

  Address? defaultAddress() {
    final defaultAddrs = state.where((e) => e.defaultYn ?? false);
    if (defaultAddrs.isEmpty) return null;

    return defaultAddrs.first;
  }

  Future<void> fetchMyAddresses() async {
    state = await _ref.read(addressRepository).fetchMyAddresses() ?? [];
  }

  // 현재 좌표 동네에 자신이 있는지(글쓰기, 수정 권한!)
  Future<bool> hasPermission() async {
    final listOfLocation = await _ref.read(addressApiRepository).findByGeo();
    return listOfLocation.contains(defaultAddress()?.fullName);
  }

  /// return : 실패 메시지!, null일경우 성공!
  Future<String?> addAddress({required String addressFullName}) async {
    if (state.length == 2) return "최대 2개까지만 등록 가능합니다";
    if (state.where((e) => e.fullName == addressFullName).isNotEmpty) return "이미 등록되어있는 동네입니다";

    final result = await _ref.read(addressRepository).addAddress(addressFullName: addressFullName);

    if (!result) "다시 시도해 주세요";

    await fetchMyAddresses();

    return null;
  }

  /// return : 실패 메시지!, null일경우 성공!
  Future<String?> removeAddress({required int idx}) async {
    if (state.length == 1) return "1개 동네는 필수입니다";

    if (state.where((e) => e.idx == idx).isEmpty) return "등록된 동네가 아닙니다";

    final result = await _ref.read(addressRepository).removeAddress(idx: idx);

    if (!result) return "다시 시도해 주세요";

    await fetchMyAddresses();
    return null;
  }

  Future<String?> changeDefaultYn({required int idx}) async {
    final targetList = state.where((e) => e.idx == idx);
    if (targetList.isEmpty) return "등록된 동네가 아닙니다";

    // 이미 디폴트인경우!
    if (targetList.first.defaultYn ?? false) return null;

    final result = await _ref.read(addressRepository).changeDefaultYn(idx: idx);

    if (!result) return "다시 시도해 주세요"; //exception, 예를 들어 자신이 가지지 않은 동네...

    await fetchMyAddresses();
    return null;
  }
}
