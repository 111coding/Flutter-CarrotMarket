import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/carrot_icon_button.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/components/address_search_form.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/components/address_search_list_view.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/view_model/address_search_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressSearchBody extends StatelessWidget {
  const AddressSearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _searchArea(context),
        _gpsButton(),
        eHeight(10),
        const Expanded(
          child: AddressSearchListView(),
        ),
      ],
    );
  }

  Widget _searchArea(BuildContext context) {
    return Row(
      children: [
        eWidth(kHorizontalPadding),
        GestureDetector(
          onTap: () => context.back(),
          child: const Icon(Icons.arrow_back),
        ),
        eWidth(10),
        const Expanded(
          child: AddressSearchForm(),
        ),
        eWidth(kHorizontalPadding),
      ],
    );
  }

  Widget _gpsButton() {
    return Consumer(
      builder: (context, ref, child) {
        return CarrotIconButton(
          text: "현재 위치로 찾기",
          icon: const Icon(Icons.gps_not_fixed),
          onPressed: () => ref.watch(addressSearchViewModel.notifier).findByGeo(),
        );
      },
    );
  }
}
