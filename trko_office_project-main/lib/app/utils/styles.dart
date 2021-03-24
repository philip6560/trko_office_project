
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyColor{
  static const dark_blue = Color.fromRGBO(2, 56, 89, 1.0);
  static const greenish = Color.fromRGBO(128, 185, 192, 1.0);
  static const whitishred = Color.fromRGBO(165, 165, 165, 1.0);
  static const white = Color.fromRGBO(225, 225, 225, 1.0);
  static const dark_cyan = Color.fromRGBO(2, 115, 115, 1.0);
  static const strong_orange = Color.fromRGBO(209, 105, 0, 1.0);
  static const light_grayish_red = Color.fromRGBO(245, 244, 244, 1.0);
  static const dark_gray = Color.fromRGBO(112, 112, 112, 1.0);
  static const strong_red = Color.fromRGBO(209, 0, 0, 1.0);
  static const slightly_desaturated_yellow = Color.fromRGBO(192, 180, 128, 1.0);
  static const pale_cyan = Color.fromRGBO(240, 253, 255, 1.0);
  static const formfield_border = Color.fromRGBO(190, 190, 190, 1.0);
  static const formfield_label = Color.fromRGBO(48, 48, 48, 1.0);
  static const shadow_color1 = Color.fromRGBO(0, 0, 0, 0.007);
  static const shadow_color2 = Color.fromRGBO(0, 0, 0, 0.016);
}


class MyTextScaleFactor{

  static var factor = Get.mediaQuery.copyWith(
      textScaleFactor: Get.mediaQuery.textScaleFactor.clamp(0.85, 1.0)
  );

}
  