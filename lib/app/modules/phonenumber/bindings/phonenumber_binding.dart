import 'package:get/get.dart';

import '../controllers/phonenumber_controller.dart';

class PhonenumberBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhonenumberController>(
      () => PhonenumberController(),
    );
  }
}
