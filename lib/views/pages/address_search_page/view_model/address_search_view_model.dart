import 'package:flutter_carrotmarket/data/address_api/address_api_repository.dart';
import 'package:riverpod/riverpod.dart';

// 페이지 나갈 때 자동으로 없어지게!
final addressSearchViewModel = StateNotifierProvider.autoDispose<AddressSearchViewModel, List<String>>(
  (ref) => AddressSearchViewModel([], ref),
);

class AddressSearchViewModel extends StateNotifier<List<String>> {
  AddressSearchViewModel(super.state, this._ref);

  final Ref _ref;

  String? selectedLocation;

  Future<void> findByGeo() async {
    state = await _ref.read(addressApiRepository).findByGeo();
  }

  Future<void> findByName({required String location}) async {
    state = await _ref.read(addressApiRepository).findByName(location: location);
  }
}
