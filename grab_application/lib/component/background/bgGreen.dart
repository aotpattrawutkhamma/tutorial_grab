import 'package:flutter/material.dart';
import 'package:grab_application/component/colors/colors.constan.dart';
import 'package:grab_application/component/text/label.dart';

class BgGreen extends StatelessWidget {
  const BgGreen(
      {super.key,
      this.child,
      this.hidePreviousIcon,
      this.backGroundColor,
      this.navigate,
      this.title,
      this.isShowTitleText = false});

  final Widget? child;
  final bool? hidePreviousIcon;
  final Color? backGroundColor;
  final Color? navigate;
  final String? title;
  final bool isShowTitleText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: isShowTitleText
            ? Label(
                title ?? "",
                color: COLOR_BLACK,
              )
            : null,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Visibility(
          visible: hidePreviousIcon ?? false,
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.navigate_before,
              size: 40,
              color: navigate ?? COLOR_WHITE,
            ),
          ),
        ),
      ),
      backgroundColor: backGroundColor ?? COLOR_GREEN,
      body: SafeArea(child: child!),
    );
  }
}
