import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import '../controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SplashScreenController controller = Get.put(SplashScreenController());

    return Container(
      color: Colors.white,
      child: Lottie.asset(
          "assets/lottie.json"),
    );
  }
}


