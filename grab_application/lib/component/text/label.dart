import 'package:flutter/material.dart';

class Label extends StatelessWidget {
  const Label(this.text,
      {super.key,
      this.fontSize,
      this.color,
      this.fontStyle,
      this.fontWeight,
      this.textoverflow});
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final FontStyle? fontStyle;
  final Color? color;
  final TextOverflow? textoverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontStyle: fontStyle,
          color: color,
          overflow: textoverflow,),
    );
  }
}
