import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:trko/app/modules/LoginScreen/views/login_screen_view.dart';

class SplashScreenController extends GetxController {

  goto_next_screen () async{
    // cache svg picture
    await loadSvg(Get.context, "assets/svg/login.svg");

    // brief imposed delay before switching screen
    await Future.delayed(Duration(seconds: 1));
    Get.offAll(LoginScreen());

  }

  loadSvg(BuildContext context, String path)async{

    // var that store the svg's directory
    var picture = SvgPicture.asset(path);

    // this svg is cache here
    await precachePicture(picture.pictureProvider, context);
    return picture;
  }

  @override
  void onInit() {
    goto_next_screen();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
