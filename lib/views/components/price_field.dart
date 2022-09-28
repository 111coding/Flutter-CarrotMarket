import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/size.dart';
import 'package:flutter_carrotmarket/core/theme.dart';
import 'package:flutter_carrotmarket/utils/thousands_input_formatter.dart';

class PriceField extends StatefulWidget {
  const PriceField({
    Key? key,
    required this.controller,
    this.autoDispose = true,
  }) : super(key: key);

  final TextEditingController controller;

  final bool autoDispose;

  @override
  PriceFieldState createState() => PriceFieldState();
}

class PriceFieldState extends State<PriceField> {
  void onTextChanged() => setState(() {});

  @override
  void initState() {
    widget.controller.addListener(onTextChanged);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(onTextChanged);
    if (widget.autoDispose) {
      widget.controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          eWidth(kHorizontalPadding),
          // InputDecoration의 prefix는 포커스 받았을때만!
          // prefixIcon은 정렬 맞추기 힘듦!
          Text(
            "₩ ",
            style: TextStyle(color: widget.controller.text.isEmpty ? Colors.grey : Colors.black),
          ),
          Expanded(
            child: TextField(
              controller: widget.controller,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              cursorColor: Colors.black, // 커서 색상
              maxLines: 1,
              decoration: _decoration(),
              inputFormatters: [ThousandsInputFormatter()],
            ),
          )
        ],
      ),
    );
  }

  InputDecoration _decoration() {
    return InputDecoration(
      hintText: "금액",
      hintMaxLines: 1,
      hintStyle: textTheme().subtitle2,
      contentPadding: const EdgeInsets.only(right: kHorizontalPadding),
      border: InputBorder.none,
    );
  }
}
