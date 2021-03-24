import 'package:get/get.dart';
import '../controllers/dialogcontroller_controller.dart';
import '../controllers/home_screen_controller.dart';

class HomeScreenBinding extends Bindings {
  @override
  void dependencies() {
		Get.lazyPut<DialogcontrollerController>(
			() => DialogcontrollerController(),
		);
    Get.lazyPut<HomeScreenController>(
      () => HomeScreenController(),
    );
  }
}