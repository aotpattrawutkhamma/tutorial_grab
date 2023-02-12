// ignore_for_file: prefer_const_constructors

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:grab_application/component/Logo/imagelogo.dart';
import 'package:grab_application/component/background/bgGreen.dart';
import 'package:grab_application/component/background/bgImage.dart';
import 'package:grab_application/component/button/button.dart';
import 'package:grab_application/component/colors/colors.constan.dart';
import 'package:grab_application/component/text/label.dart';
import 'package:grab_application/route/router_list.dart';

class MenuloginScreen extends StatefulWidget {
  const MenuloginScreen({super.key});

  @override
  State<MenuloginScreen> createState() => _MenuloginScreenState();
}

class _MenuloginScreenState extends State<MenuloginScreen> {
  String name = "";
  @override
  Widget build(BuildContext context) {
    return BgGreen(
      hidePreviousIcon: true,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: const [
                Center(
                  child: Logo(
                    image: "logo/logograbWhite.png",
                  ),
                ),
                Label(
                  "Welcome!",
                  color: COLOR_WHITE,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, bottom: 30),
              child: Column(
                children: [
                  Button(
                    "ดำเนินการต่อด้วย Facebook",
                    isShowicon: true,
                    pathImage: "icon/facebook.png",
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Button(
                    "ดำเนินการต่อด้วย Google",
                    isShowicon: true,
                    pathImage: "icon/google.png",
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Button(
                    "ดำเนินการต่อด้วย Apple",
                    isShowicon: true,
                    pathImage: "icon/apple.png",
                    fontWeight: FontWeight.w600,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  _dividerCustomize(),
                  Button(
                    "ดำเนินการต่อด้วยเบอร์โทรศัพท์",
                    onPress: () => Navigator.pushNamed(
                        context, RouterList.AUTH_PHONE_NUMBER),
                    isShowicon: true,
                    pathImage: "icon/call.png",
                    fontWeight: FontWeight.w600,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dividerCustomize() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 15.0, top: 2.5),
              child: Divider(
                color: COLOR_WHITE,
                thickness: 2,
                height: 50,
              )),
        ),
        Label(
          "หรือ",
          color: COLOR_WHITE,
          fontSize: 18,
        ),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 15.0, right: 10.0, top: 2.5),
              child: Divider(
                color: COLOR_WHITE,
                thickness: 2,
                height: 50,
              )),
        ),
      ],
    );
  }
}
