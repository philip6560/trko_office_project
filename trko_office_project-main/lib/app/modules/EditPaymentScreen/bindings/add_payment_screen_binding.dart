import 'package:get/get.dart';

import '../controllers/edit_payment_screen_controller.dart';

class EditPaymentScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditPaymentScreenController>(
      () => EditPaymentScreenController(),
    );
  }
}
