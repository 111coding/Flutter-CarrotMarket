import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/carrot_date_utils.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';
import 'package:flutter_carrotmarket/views/components/user_profile_image.dart';

class ProductDetailInfo extends StatelessWidget {
  const ProductDetailInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _userInfo(),
        const GreyLine(),
        _productInfo(),
      ],
    );
  }

  Widget _productInfo() {
    return Container(
      width: double.infinity,
      padding: hPadding(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          eHeight(10),
          Text("기타 팝니다", style: textTheme().headlineLarge),
          eHeight(10),
          Row(
            children: [
              const Text(
                "디지털/완구",
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              eWidth(10),
              Text(CarrotDateUtils.compareString(DateTime.now(), DateTime.now())),
            ],
          ),
          eHeight(20),
          const Text("상태 좋아요"),
          eHeight(20),
          const Text("관심 10"),
        ],
      ),
    );
  }

  Widget _userInfo() {
    return Container(
      padding: hPadding(),
      width: double.infinity,
      height: 80,
      color: Colors.white,
      child: Row(
        children: [
          const UserProfileImage(),
          eWidth(8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("캐롯", style: textTheme().headline2),
              eHeight(5),
              const Text("기장읍"),
              eHeight(5), // 글자 height때문에 프로필 이미지랑 정렬 맟출려고 넣음
            ],
          )
        ],
      ),
    );
  }
}
