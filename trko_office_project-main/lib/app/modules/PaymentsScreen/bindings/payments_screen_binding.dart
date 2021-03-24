import 'package:get/get.dart';

import '../controllers/payments_screen_controller.dart';

class PaymentsScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentsScreenController>(
      () => PaymentsScreenController(),
    );
  }
}
