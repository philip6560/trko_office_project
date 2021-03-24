import 'package:get/get.dart';
import 'package:trko/app/services/api_calls.dart';


class HomeScreenController extends GetxController {
  Webservice webservice = Get.find();

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

  getUsercount(){
    return webservice.getUsercount();
  }

}
