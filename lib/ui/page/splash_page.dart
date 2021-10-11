import 'package:flutter/material.dart';
import '../../resource/app_image.dart';
import '../../resource/app_color.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        body: Center(child: Image.asset(logoUIImage, scale: 3)));
  }
}
