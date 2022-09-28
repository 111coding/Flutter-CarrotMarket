import 'package:flutter/material.dart';
import 'package:flutter_carrotmarket/core/routes.dart';
import 'package:flutter_carrotmarket/views/components/grey_line.dart';

class CustomDropDown {
  static Future show(
    GlobalKey widgetKey, {
    required List<CustomDropDownItem> items,
    required double itemWidth,
  }) {
    final RenderBox renderBox = widgetKey.currentContext!.findRenderObject() as RenderBox;
    Offset pos = renderBox.localToGlobal(Offset.zero);

    final isLeft = pos.dx + itemWidth < MediaQuery.of(widgetKey.currentContext!).size.width;
    final leftPost = isLeft ? pos.dx : pos.dx - itemWidth + renderBox.size.width;
    final alignment = isLeft ? Alignment.topLeft : Alignment.topRight;

    final children = <Widget>[];
    final itemCount = items.length;

    for (int i = 0; i < itemCount; i++) {
      children.add(items[i]);
      if (i < itemCount - 1) {
        children.add(const GreyLine(margin: 0));
      }
    }
    return showDialog(
        context: widgetKey.currentContext!,
        barrierColor: Colors.transparent,
        useSafeArea: false,
        barrierDismissible: true,
        builder: (context) {
          return Stack(
            children: [
              Positioned(
                left: leftPost,
                top: pos.dy + renderBox.size.height,
                child: TweenAnimationBuilder<double>(
                  tween: Tween<double>(begin: 0, end: 1),
                  curve: Curves.elasticOut, // 끝에 통통 튀는 곡선
                  duration: const Duration(milliseconds: 200),
                  builder: (BuildContext context, double size, Widget? child) => Transform.scale(scale: size, alignment: alignment, child: child),
                  child: Container(
                    width: itemWidth,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: children,
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}

class CustomDropDownItem extends StatelessWidget {
  const CustomDropDownItem({
    super.key,
    required this.text,
    this.style,
    this.onClick,
  });

  final String text;
  final void Function()? onClick;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.back();
        onClick?.call();
      },
      child: Container(
        height: 50,
        alignment: Alignment.center,
        color: Colors.transparent,
        child: Text(text, style: style),
      ),
    );
  }
}
