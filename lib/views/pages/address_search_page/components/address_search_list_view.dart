import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/components/address_search_list_item.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class AddressSearchListView extends ConsumerWidget {
  const AddressSearchListView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textStyle = Theme.of(context).textTheme.bodyText1;
    final items = [
      "부산광역시 기장군 기장읍",
      "부산광역시 기장군 정관읍",
      "부산광역시 해운대구 송정동",
    ];

    return items.isEmpty
        ? _emptyText()
        : ListView.separated(
            itemBuilder: (context, index) => AddressSearchListItem(text: items[index], style: textStyle),
            separatorBuilder: (context, index) => _separator(),
            itemCount: items.length,
          );
  }

  Widget _emptyText() => const Center(
        child: Text(
          "검색결과가 없어요.\n 동네이름을 다시 확인해주세요",
          textAlign: TextAlign.center,
        ),
      );

  Widget _separator() => Container(
        color: Colors.grey[200],
        height: 1,
        margin: hPadding(),
      );
}
