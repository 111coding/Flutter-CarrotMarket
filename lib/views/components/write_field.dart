import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';

class WriteField extends StatefulWidget {
  const WriteField({
    Key? key,
    required this.controller,
    this.hint = "",
    this.maxLine = 1,
    this.autoDispose = true,
  }) : super(key: key);

  final TextEditingController controller;

  final String hint;
  final int? maxLine;
  final bool autoDispose;

  @override
  WriteFieldState createState() => WriteFieldState();
}

class WriteFieldState extends State<WriteField> {
  @override
  void dispose() {
    if (widget.autoDispose) {
      widget.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool multiLine = widget.maxLine != 1;
    return Container(
      height: multiLine ? null : 60,
      alignment: Alignment.center,
      child: TextField(
        controller: widget.controller,
        keyboardType: multiLine ? TextInputType.multiline : TextInputType.text,
        textInputAction: multiLine ? TextInputAction.newline : TextInputAction.done,
        cursorColor: Colors.black, // 커서 색상
        maxLines: widget.maxLine,
        decoration: _decoration(),
      ),
    );
  }

  InputDecoration _decoration() {
    return InputDecoration(
      hintText: widget.hint,
      hintMaxLines: 10,
      hintStyle: textTheme().subtitle2,
      contentPadding: hPadding(),
      border: InputBorder.none,
    );
  }
}
