import 'package:get/get.dart';

import '../controllers/project_screen_controller.dart';

class ProjectScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProjectScreenController>(
      () => ProjectScreenController(),
    );
  }
}
