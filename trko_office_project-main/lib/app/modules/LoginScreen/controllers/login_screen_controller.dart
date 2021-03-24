import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trko/app/services/api_calls.dart';

class LoginScreenController extends GetxController {

  
  final field1 = ValueKey('field1');
  final field2 = ValueKey('field2');

  Webservice webservice = Get.find();

  login(username, password) async {
    try {
      final response = await webservice.login(username, password);
    } on DioError catch (e) {
      print(e.toString());
    } on Exception catch (e) {
      print(e.toString());
    }
  }

  getUsercount() {
    return webservice.getUsercount();
  }


  @override
  void onInit() {}

  @override
  void onReady() {}

  @override
  void onClose() {}

}
