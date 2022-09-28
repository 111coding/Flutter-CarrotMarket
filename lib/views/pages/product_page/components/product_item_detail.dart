import 'package:flutter/cupertino.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:intl/intl.dart';

class ProductItemDetail extends StatelessWidget {
  const ProductItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("자전거", style: textTheme().bodyText1),
          const SizedBox(height: 4.0),
          Text('기장군 • ${CarrotDateUtils.compareString(
            DateTime.now(),
            DateTime.now().add(const Duration(days: -3)),
          )}'),
          const SizedBox(height: 4.0),
          Text(
            '100,000원',
            style: textTheme().headline2,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const SizedBox(width: 8.0),
              _buildIcons(
                22,
                CupertinoIcons.heart,
              ),
            ],
          )
        ],
      ),
    );
  }

  String numberFormat(String price) {
    final formatter = NumberFormat('#,###');
    return formatter.format(int.parse(price));
  }

  Widget _buildIcons(int count, IconData iconData) {
    return Row(
      children: [
        Icon(iconData, size: 14.0),
        const SizedBox(width: 4.0),
        Text('$count'),
      ],
    );
  }
}
