import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/utils/validator.dart';

class NicknameFormField extends StatefulWidget {
  const NicknameFormField({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  NicknameFormFieldState createState() => NicknameFormFieldState();
}

class NicknameFormFieldState extends State<NicknameFormField> {
  @override
  void dispose() {
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          controller: widget.controller,
          textInputAction: TextInputAction.done,
          decoration: _decoration(),
          validator: Validator.nickname,
        ),
      ],
    );
  }

  InputDecoration _decoration() {
    return InputDecoration(
      contentPadding: hPadding(),
      hintText: "OO마켓에서 사용하실 이름을 입력해 주세요",
      border: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),

      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ), // 포커스 받았을 때 기존 색상과 동일
      errorBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange),
      ), // 벨리데이션 실패했을때!
    );
  }
}
