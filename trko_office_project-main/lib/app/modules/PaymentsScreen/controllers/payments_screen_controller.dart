import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:get/get.dart';

class PaymentsScreenController extends GetxController {
  //TODO: Implement PaymentsScreenController

  var slidableController = SlidableController().obs;
  var scrollController = ScrollController().obs;
  RxBool is_button_visible = true.obs;

  var showRadius = false.obs;


  bool transformRadius(bool value){
    print('i was here$showRadius');
    showRadius.value = value;
    return showRadius.value;
  }

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
