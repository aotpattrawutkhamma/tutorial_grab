import 'package:flutter/material.dart';
import 'package:grab_application/Screens/menulogin_screen.dart';
import 'package:grab_application/component/Logo/imagelogo.dart';
import 'package:grab_application/component/background/bgImage.dart';
import 'package:grab_application/component/button/button.dart';
import 'package:grab_application/component/colors/colors.constan.dart';
import 'package:grab_application/component/text/label.dart';
import 'package:grab_application/route/router_list.dart';
import 'package:page_transition/page_transition.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BgImageGreen(
        child: Column(
      children: [
        Expanded(flex: 5, child: _logo()),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                children: [
                  Button(
                    "เข้าสู่ระบบ",
                    onPress: () => Navigator.pushNamed(
                        context, RouterList.MENULOGIN_SCREEN)

                    // Navigator.pushNamed(
                    //     context, RouterList.MENULOGIN_SCREEN)
                    ,
                    background: COLOR_GREEN,
                    colorSide: COLOR_TRANSPARENT,
                    textColors: COLOR_WHITE,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Button(
                    "ยังไม่เคยใช้ Grab? ลงทะเบียนเลย!",
                    textColors: COLOR_BLACK,
                    background: Colors.blue.withOpacity(0.1),
                    colorSide: COLOR_TRANSPARENT,
                    onPress: () => print("print"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }

  Widget _logo() {
    return Column(
      children: const [
        SizedBox(
          height: 15,
        ),
        Logo(
          image: "logo/logograbWhite.png",
        ),
        Label(
          "Your everday everthing app",
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.normal,
        )
      ],
    );
  }
}
