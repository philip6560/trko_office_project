import 'package:get/get.dart';

import '../controllers/edit_update_screen_controller.dart';

class EditUpdateScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditUpdateScreenController>(
      () => EditUpdateScreenController(),
    );
  }
}
