import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';

import 'package:flutter_carrotmarket/data/address/model/address.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressSelectBody extends StatelessWidget {
  const AddressSelectBody({super.key});

  void _addFn(BuildContext context, WidgetRef ref, int idx) async {
    final result = await ref.read(addressProvider.notifier).changeDefaultYn(idx: idx);
    if (result != null) {
      SimpleSnackbar.show(context, result);
    }
  }

  void _removeFn(BuildContext context, WidgetRef ref, int idx) async {
    final result = await ref.read(addressProvider.notifier).removeAddress(idx: idx);
    if (result != null) {
      SimpleSnackbar.show(context, result);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          eHeight(10),
          Text("동네선택", style: textTheme().headline2),
          eHeight(5),
          Text("지역은 최소 1개 이상 최대 2개까지 설정 가능해요.", style: textTheme().subtitle2),
          eHeight(5),
          _items(),
        ],
      ),
    );
  }

  Widget _items() {
    // 항상 2개의 아이템 출력!
    return Padding(
      padding: hPadding(),
      child: Row(
        children: [
          _item(0),
          eWidth(10),
          _item(1),
        ],
      ),
    );
  }

  Widget _item(int index) {
    return Consumer(
      builder: (context, ref, child) {
        final items = ref.watch(addressProvider);
        return items.length > index ? _addrItem(context, items[index], ref) : _addBtn(context);
      },
    );
  }

  Widget _addrItem(BuildContext context, Address address, WidgetRef ref) {
    final defaultYn = address.defaultYn ?? false;
    return Expanded(
      child: GestureDetector(
        onTap: () => _addFn(context, ref, address.idx),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: defaultYn ? Colors.orange : Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: defaultYn ? null : Border.all(color: Colors.grey[300]!),
          ),
          padding: hPadding(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(address.displayName, style: defaultYn ? textTheme().headline2!.copyWith(color: Colors.white) : textTheme().headline2),
              GestureDetector(
                onTap: () => _removeFn(context, ref, address.idx),
                child: Icon(Icons.cancel_outlined, size: 20, color: defaultYn ? Colors.white : Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addBtn(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Routes.addressSearch.push(),
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
