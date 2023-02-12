import 'package:flutter/material.dart';

class BgImageGreen extends StatelessWidget {
  const BgImageGreen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/bg/bg_LoginNew.png"),
              fit: BoxFit.cover),
        ),
        child: SafeArea(child: child),
      ),
    );
  }
}
