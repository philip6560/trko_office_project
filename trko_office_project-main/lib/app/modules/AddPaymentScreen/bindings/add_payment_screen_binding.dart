import 'package:get/get.dart';

import '../controllers/add_payment_screen_controller.dart';

class AddPaymentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddPaymentScreenController>(
      () => AddPaymentScreenController(),
    );
  }
}
