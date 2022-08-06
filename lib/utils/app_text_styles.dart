import 'package:flutter/material.dart';
import 'package:open_gate/utils/colors.dart';

TextStyle dTextStyle({double? size, Color? color, FontWeight? fw}) {
  return TextStyle(
    fontSize: size ?? 16,
    color: color ?? darkColor,
    fontWeight: fw ?? FontWeight.w300,
  );
}
