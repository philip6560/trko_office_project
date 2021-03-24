import 'package:get/get.dart';

import '../controllers/updates_screen_controller.dart';

class UpdatesScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UpdatesScreenController>(
      () => UpdatesScreenController(),
    );
  }
}
