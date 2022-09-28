import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';

class ChatInputArea extends StatefulWidget {
  const ChatInputArea({
    Key? key,
    this.send,
  }) : super(key: key);

  final void Function(String v)? send;

  @override
  ChatInputAreaState createState() => ChatInputAreaState();
}

class ChatInputAreaState extends State<ChatInputArea> {
  bool canSend = false;
  final ctrl = TextEditingController();

  void _send() {
    if (canSend) {
      widget.send?.call(ctrl.text);
      ctrl.text = "";
    }
  }

  void _onChanged(String v) {
    canSend = v.trim().isNotEmpty;
    setState(() {});
  }

  @override
  void dispose() {
    ctrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          // height: 45,
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          color: Colors.white,
          width: double.infinity,
          child: TextFormField(
            controller: ctrl,
            onChanged: _onChanged,
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: null,
            // 커서 색상
            cursorColor: Colors.orange,
            decoration: _decoration(),
          ),
        ),
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).padding.bottom,
          color: Colors.white,
        )
      ],
    );
  }

  InputDecoration _decoration() => InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding, vertical: 8),
        isDense: true,
        constraints: const BoxConstraints(maxHeight: 80),
        // ===== 백그라운드 컬러 시작 =====
        filled: true, // 백그라운드 컬러
        fillColor: Colors.white,
        // ===== 백그라운드 컬러 끝 =====
        // 포커스 없을때 테두리
        enabledBorder: _border(Colors.grey[200]!),
        // 포커스 받았을때 테두리
        focusedBorder: _border(Colors.orange),
        suffixIconConstraints: const BoxConstraints(maxHeight: 24),
        suffixIcon: GestureDetector(
          onTap: _send,
          child: Container(
            margin: const EdgeInsets.only(right: 10),
            child: Icon(
              Icons.send_sharp,
              color: canSend ? Colors.orange : Colors.grey[200],
            ),
          ),
        ),
      );

  InputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(color: color),
        borderRadius: BorderRadius.circular(20),
      );
}
