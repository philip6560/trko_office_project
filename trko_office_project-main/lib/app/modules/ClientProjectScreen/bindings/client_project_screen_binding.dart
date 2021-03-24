import 'package:get/get.dart';

import '../controllers/client_project_screen_controller.dart';

class ClientProjectScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientProjectScreenController>(
      () => ClientProjectScreenController(),
    );
  }
}
