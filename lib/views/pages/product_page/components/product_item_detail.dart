import 'package:flutter/cupertino.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:intl/intl.dart';
import 'package:flutter_carrotmarket/data/product/model/product.dart';

class ProductItemDetail extends StatelessWidget {
  final Product product;

  const ProductItemDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(product.title, style: textTheme().bodyText1),
          const SizedBox(height: 4.0),
          Text('${product.address.displayName} • ${CarrotDateUtils.compareString(product.updateAt, product.createAt)}'),
          const SizedBox(height: 4.0),
          Text(
            '${NumberFormat("#,###").format(product.price)}원',
            style: textTheme().headline2,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Visibility(
              //   visible: product.likeCnt > 0,
              //   child: _buildIcons(
              //     product.likeCnt,
              //     CupertinoIcons.chat_bubble_2,
              //   ),
              // ),
              const SizedBox(width: 8.0),
              Visibility(
                visible: product.likeCnt > 0,
                child: _buildIcons(
                  product.likeCnt,
                  CupertinoIcons.heart,
                ),
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
