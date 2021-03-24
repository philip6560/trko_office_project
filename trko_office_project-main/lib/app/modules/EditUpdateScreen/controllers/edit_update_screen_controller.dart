import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditUpdateScreenController extends GetxController {
  //TODO: Implement EditUpdateScreenController

  final ratio1 = 5;
  final ratio2 = 1;
  final field1 = ValueKey('1');
  final field2 = ValueKey('2');
  final field3 = ValueKey('3');
  final field4 = ValueKey('4');
  var currentItem = 0.obs;

  selectedItem(value){

    currentItem.value = value;

  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
