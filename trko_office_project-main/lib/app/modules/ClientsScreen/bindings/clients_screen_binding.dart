import 'package:get/get.dart';

import '../controllers/clients_screen_controller.dart';

class ClientsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ClientsScreenController>(
      () => ClientsScreenController(),
    );
  }
}
