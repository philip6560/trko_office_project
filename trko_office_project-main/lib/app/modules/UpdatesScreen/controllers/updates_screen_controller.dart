import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';

class UpdatesScreenController extends GetxController {
  //TODO: Implement UpdatesScreenController

  var scrollController = ScrollController().obs;
  RxBool is_button_visible = true.obs;
  
    hideButton(){
      if(scrollController.value.hasClients){
        if (scrollController.value.position.userScrollDirection == ScrollDirection.reverse){
          if(is_button_visible.value == true){
            is_button_visible.value = false;
          }
        }else if(scrollController.value.position.userScrollDirection == ScrollDirection.forward){
          if(is_button_visible.value == false){
            is_button_visible.value = true;
          }
        }
      }
    }


  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    scrollController.value.addListener(()=> hideButton());
    super.onReady();
  }

  @override
  void onClose() {}
}
