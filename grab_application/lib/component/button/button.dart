// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:grab_application/component/colors/colors.constan.dart';
import 'package:grab_application/component/text/label.dart';

class Button extends StatelessWidget {
  const Button(this.text,
      {super.key,
      this.onPress,
      this.background,
      this.borderRadius,
      this.colorSide,
      this.fontSize,
      this.textColors,
      this.fontWeight = FontWeight.normal,
      this.isShowicon,
      this.pathImage});
  final Function? onPress;
  final String? text;
  final Color? background;
  final double? borderRadius;
  final Color? colorSide;
  final Color? textColors;
  final double? fontSize;
  final FontWeight? fontWeight;

  final bool? isShowicon;
  final String? pathImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
        onPressed: () => onPress?.call(),
        child: Row(
          children: [
            Visibility(
              visible: isShowicon ?? false,
              child: Image.asset(
                "assets/${pathImage}",
                width: 30,
              ),
            ),
            Expanded(
              child: Label(
                text ?? "text",
                color: textColors ?? Colors.black,
                fontSize: fontSize ?? 16,
                fontWeight: fontWeight,
              ),
            ),
          ],
        ),
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all<Color>(background ?? Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(borderRadius ?? 20),
                side: BorderSide(color: colorSide ?? Colors.white)),
          ),
        ),
      ),
    );
  }
}
