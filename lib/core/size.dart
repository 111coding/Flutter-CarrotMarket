import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const double kHorizontalPadding = 20;
const double kVerticalPadding = 20;

EdgeInsets hPadding({double? horizontalPadding}) => EdgeInsets.symmetric(horizontal: horizontalPadding ?? kHorizontalPadding);
EdgeInsets vPadding({double? verticalPadding}) => EdgeInsets.symmetric(vertical: verticalPadding ?? kVerticalPadding);

Widget eWidth(double width) => SizedBox(width: width);
Widget eHeight(double height) => SizedBox(height: height);
