import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AddUpdateScreenController extends GetxController {
  //TODO: Implement AddUpdateScreenController

  final ratio1 = 5;
  final ratio2 = 1;
  final field1 = ValueKey('1');
  final field2 = ValueKey('2');
  final field3 = ValueKey('3');
  final field4 = ValueKey('4');
  var currentItem = 0.obs;
  final formkey = GlobalKey<FormState>().obs;

  selectedItem(value){

    currentItem.value = value;

  }

  @override
  void onInit() {
    // final renderObject = Get.context.findRenderObject();
    // final renderBox = renderObject as RenderBox;
    // final offset = renderBox.localToGlobal(Offset.zero);
    // final widgetRect = Rect.fromLTWH(offset.dx, offset.dy, renderBox.size.width, renderBox.size.height);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
