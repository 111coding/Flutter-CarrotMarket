import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/views/components/carrot_button.dart';
import 'package:flutter_carrotmarket/views/components/nickname_form.dart';
import 'package:lottie/lottie.dart';

class JoinBody extends StatefulWidget {
  const JoinBody({super.key});

  @override
  State<JoinBody> createState() => JoinBodyState();
}

class JoinBodyState extends State<JoinBody> {
  final formKey = GlobalKey<FormState>();
  final nicknameCtrl = TextEditingController();

  void _join() {}

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _logoWithText(),
        Align(
          alignment: Alignment.bottomCenter,
          child: _joinBtn(),
        ),
      ],
    );
  }

  Widget _logoWithText() {
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
          "OO마켓에서 사용하실 이름을 입력해 주세요",
          textAlign: TextAlign.center,
        ),
        eHeight(10),
        Padding(
          padding: hPadding(),
          child: Form(
            key: formKey,
            child: NicknameFormField(controller: nicknameCtrl),
          ),
        ),
      ],
    );
  }

  Widget _joinBtn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        CarrotButton(
          text: "가입하기",
          onPressed: () => _join(),
        ),
        eHeight(40),
      ],
    );
  }
}
