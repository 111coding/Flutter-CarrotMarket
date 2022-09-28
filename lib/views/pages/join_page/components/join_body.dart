import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/data/auth/provider/auth_provider.dart';
import 'package:flutter_carrotmarket/utils/simple_snackbar.dart';
import 'package:flutter_carrotmarket/views/components/carrot_button.dart';
import 'package:flutter_carrotmarket/views/components/nickname_form.dart';
import 'package:flutter_carrotmarket/views/pages/address_search_page/view_model/address_search_view_model.dart';
import 'package:lottie/lottie.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JoinBody extends ConsumerStatefulWidget {
  const JoinBody({super.key});

  @override
  ConsumerState<JoinBody> createState() => JoinBodyState();
}

class JoinBodyState extends ConsumerState<JoinBody> {
  final formKey = GlobalKey<FormState>();
  final nicknameCtrl = TextEditingController();

  void _join() async {
    final validation = formKey.currentState?.validate() ?? false;
    if (!validation) return;
    final provider = ref.watch(authProvider);
    final result = await provider.nicknameCheck(username: nicknameCtrl.text);
    if (!result) {
      SimpleSnackbar.show(context, "사용할 수 없는 닉네임입니다");
      return;
    }

    final joinResult = await provider.join(nickname: nicknameCtrl.text, addressFullName: ref.watch(addressSearchViewModel.notifier).selectedLocation!);
    if (joinResult == null) return;
    if (joinResult) {
      SimpleSnackbar.show(context, "회원가입 완료하였습니다.\n로그인 해주세요");
      Routes.login.pushAndRemoveAll();
    } else {
      SimpleSnackbar.show(context, "사용할 수 없는 계정입니다");
    }
  }

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
