import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';

class AddressSelectBody extends StatelessWidget {
  const AddressSelectBody({super.key});

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
          _addrItem(),
          eWidth(10),
          _addBtn(),
        ],
      ),
    );
  }

  Widget _addrItem() {
    return Expanded(
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(8),
          ),
          padding: hPadding(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("기장읍", style: textTheme().headline2!.copyWith(color: Colors.white)),
              GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.cancel_outlined,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _addBtn() {
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
