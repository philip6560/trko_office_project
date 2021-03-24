import 'package:get/get.dart';

import '../controllers/add_update_screen_controller.dart';

class AddUpdateScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddUpdateScreenController>(
      () => AddUpdateScreenController(),
    );
  }
}
