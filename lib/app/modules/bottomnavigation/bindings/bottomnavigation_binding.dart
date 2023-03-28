import 'package:get/get.dart';

import '../controllers/bottomnavigation_controller.dart';

class BottomnavigationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BottomnavigationController>(
      () => BottomnavigationController(),
    );
  }
}
