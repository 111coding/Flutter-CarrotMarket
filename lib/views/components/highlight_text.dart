import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// 문자열을 <<>> 로  감싸면 강조처리!
///
/// ex) HighlightText("click <<here>>");
class HighlightText extends StatelessWidget {
  const HighlightText({
    required this.text,
    this.textAlign,
    this.normalStyle,
    this.highlightStyle,
    this.onClicks,
    Key? key,
  }) : super(key: key);

  /// 문구
  final String text;

  final TextAlign? textAlign;

  final TextStyle? normalStyle;
  final TextStyle? highlightStyle;

  /// 하이라이트 순서에 맞게 클릭함수 넣으세요
  /// 하이라이트 보다 사이즈가 작을시 onClicks 사이즈 만큼 순차적으로 들어가고 나머지는 온클릭 안들어갑니다.
  final List<void Function()>? onClicks;

  TextSpan _normalText(str) => TextSpan(text: str, style: normalStyle ?? GoogleFonts.openSans(fontSize: 14.0, color: Colors.grey));
  TextSpan _highlightText(str, {Function()? onClick}) => TextSpan(
        text: str,
        style: highlightStyle ?? GoogleFonts.openSans(fontSize: 14.0, color: Colors.orange, fontWeight: FontWeight.bold),
        recognizer: TapGestureRecognizer()..onTap = onClick,
      );

  List<TextSpan> _handleText() {
    List<TextSpan> spans = [];

    text.splitMapJoin(RegExp(r"\<<.*?\>>"), onMatch: (match) {
      String str = match.group(0) ?? "";
      String replacedText = str.replaceAll(RegExp(r"[<>]"), "");
      // 함수 없으면 널
      Function()? onClick = (onClicks?.isNotEmpty ?? false) ? onClicks!.removeAt(0) : null;
      spans.add(_highlightText(replacedText, onClick: onClick));
      return "";
    }, onNonMatch: (str) {
      spans.add(_normalText(str));
      return "";
    });

    return spans;
  }

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: _handleText()),
      textAlign: textAlign,
    );
  }
}
