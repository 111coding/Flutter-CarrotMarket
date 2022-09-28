import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';

class ProductDetailUserProducts extends StatelessWidget {
  const ProductDetailUserProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: hPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "캐롯님의 판매상품",
            style: textTheme().headline2,
          ),
          GridView.builder(
            physics: const ClampingScrollPhysics(),
            shrinkWrap: true, // wrap_content
            itemCount: 3,
            padding: vPadding(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //1 개의 행에 보여줄 item 개수
              childAspectRatio: 1, //item 의 비율
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) => _girdItem(),
          )
        ],
      ),
    );
  }

  Widget _girdItem() {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: Colors.grey[200],
                width: double.infinity,
                height: constraints.maxHeight * 2 / 3,
                alignment: Alignment.center,
                child: Image.network(
                  "https://images.unsplash.com/photo-1593465350113-8078a54218a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8dGVsZWNhc3RlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const Spacer(),
            Text("기타", style: textTheme().bodyText1),
            Text("1,000원", style: textTheme().bodyText1),
            const Spacer(),
          ],
        );
      },
    );
  }
}
