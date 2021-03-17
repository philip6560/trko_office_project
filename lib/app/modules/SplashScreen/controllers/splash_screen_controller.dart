import 'dart:async';

import 'package:get/get.dart';
import 'package:test_project_one/app/modules/HomeScreen/views/home_screen_view.dart';

class SplashScreenController extends GetxController {
  //TODO: Implement SplashScreenController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    // Timer(Duration(seconds: 3), () {
    //   Get.offAll(HomeScreen());
    // });
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
