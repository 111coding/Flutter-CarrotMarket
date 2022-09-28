import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/data/auth/provider/auth_provider.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/view_model/address_search_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressSearchListItem extends ConsumerWidget {
  const AddressSearchListItem({
    super.key,
    required this.text,
    this.style,
  });

  final String text;
  final TextStyle? style;

  void _onTap(WidgetRef ref, BuildContext context) async {
    if (ref.watch(authProvider).jwt == null) {
      // 회원가입
      ref.watch(addressSearchViewModel.notifier).selectedLocation = text;
      Routes.join.push();
    } else {
      final result = await ref.watch(addressProvider.notifier).addAddress(addressFullName: text);
      if (result != null) {
        SimpleSnackbar.show(context, result);
      } else {
        context.back();
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () => _onTap(ref, context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 10),
        color: Colors.transparent, // Gesture 영역 전체!
        child: Text(
          text,
          style: style,
        ),
      ),
    );
  }
}
