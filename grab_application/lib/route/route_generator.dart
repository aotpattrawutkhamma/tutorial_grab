import 'package:flutter/material.dart';
import 'package:grab_application/Screens/auth/authPhone.dart';
import 'package:grab_application/Screens/home_screen.dart';
import 'package:grab_application/Screens/menulogin_screen.dart';
import 'package:page_transition/page_transition.dart';

import 'router_list.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    print(settings.name);
    switch (settings.name) {
      case RouterList.MENULOGIN_SCREEN:
        return PageTransition(
          settings: settings,
          type: PageTransitionType.rightToLeft,
          child: const MenuloginScreen(),
        );
      case RouterList.AUTH_PHONE_NUMBER:
        return PageTransition(
          settings: settings,
          type: PageTransitionType.rightToLeft,
          child: const AuthPhoneScreen(),
        );
    }
    throw UnsupportedError('Unknown route: ${settings.name}');
  }
}
