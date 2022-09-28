import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/data/address/provider/address_provider.dart';
import 'package:flutter_carrotmarket/views/pages/product_search_page/view_model/product_search_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductSearchTextField extends ConsumerWidget with PreferredSizeWidget {
  const ProductSearchTextField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productSearchNotifier = ref.read(productSearchViewModel.notifier);
    final userAddress = ref.read(addressProvider).where((a) => a.defaultYn ?? false).first.displayName;

    return Container(
      width: MediaQuery.of(context).size.width - 48, // icon size
      height: 50,
      padding: hPadding(),

      child: TextField(
        controller: productSearchNotifier.searchCtrl,
        onSubmitted: (v) async => await productSearchNotifier.search(),
        decoration: InputDecoration(
          hintText: "$userAddress 근처에서 검색",
          filled: true,
          fillColor: Colors.grey[100],
          contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0), borderSide: BorderSide.none),
          suffixIconConstraints: const BoxConstraints(maxHeight: 20),
          suffixIcon: Container(
            margin: hPadding(horizontalPadding: 10),
            child: const Icon(
              Icons.cancel,
              size: 20,
              color: Colors.grey,
            ),
          ),
        ),
        cursorColor: Colors.orangeAccent,
        maxLines: 1,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
