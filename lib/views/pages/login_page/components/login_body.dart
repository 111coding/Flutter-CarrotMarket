import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/carrot_button.dart';
import 'package:flutter_carrotmarket/views/components/highlight_text.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  void _join(BuildContext context) => Routes.addressSearch.push();

  void _login() async {
    Routes.main.popAndPush();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _logoWithText(context),
        Align(
          alignment: Alignment.bottomCenter,
          child: _btnBox(context),
        ),
      ],
    );
  }

  Widget _logoWithText(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Lottie.asset('assets/lottie/carrot2.json'),
        ),
        Text(
          "당신 근처의 OO마켓",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Text(
          "중고 거래부터 동네 정보까지,\n지금 내 동네를 선택하고 시작해보세요!",
          textAlign: TextAlign.center,
        )
      ],
    );
  }

  Widget _btnBox(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CarrotButton(
          text: "시작하기",
          onPressed: () => _join(context),
        ),
        eHeight(10),
        Consumer(
          builder: (context, ref, child) {
            return HighlightText(
              text: "이미 계정이 있나요? <<로그인>>",
              onClicks: [
                () => _login(),
              ],
            );
          },
        ),
        eHeight(40),
      ],
    );
  }
}
