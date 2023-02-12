import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.image, this.color, this.height, this.width});

  final String? image;
  final double? height;
  final double? width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 100,
      width: width ?? 150,
      decoration: BoxDecoration(
        color: color,
        image: DecorationImage(
          image: AssetImage("assets/${image}"),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
