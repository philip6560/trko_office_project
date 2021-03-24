import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

double width(double value){

  // width of the screen the design was made on
  double width = 393.0;

  double width_of_device = Get.mediaQuery.size.width.floorToDouble();
  double safe_area_horizontal = Get.mediaQuery.padding.left.floorToDouble() + Get.mediaQuery.padding.right.floorToDouble();
  // the input value divided by screen width from the design template is then multiplied to 
  // give the width based on different screen size
  double actual_width_based_on_screensize = (value/width) * (width_of_device - safe_area_horizontal);
  // convert width to two decimal places
  double mod = pow(10.0, 4);
  double final_width = ((actual_width_based_on_screensize * mod).round().toDouble() / mod);
  return final_width;
}

double height(double value){

  // height of the screen the design was made on
  double height = 799.0;

  double height_of_device = Get.mediaQuery.size.height.floorToDouble();
  double safe_area_vertical =  Get.mediaQuery.padding.top.floorToDouble() + Get.mediaQuery.padding.bottom.floorToDouble() + AppBar().preferredSize.height.floorToDouble();
  // the input value divided by screen width from the design template is then multiplied to 
  // give the width based on different screen size
  double actual_height_based_on_screensize = (value/height) * (height_of_device - safe_area_vertical);
  // convert width to two decimal places
  double mod = pow(10.0, 4);
  double final_height = ((actual_height_based_on_screensize * mod).round().toDouble() / mod);
  return final_height;
}