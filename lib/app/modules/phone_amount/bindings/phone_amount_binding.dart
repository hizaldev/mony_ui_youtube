import 'package:get/get.dart';

import '../controllers/phone_amount_controller.dart';

class PhoneAmountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PhoneAmountController>(
      () => PhoneAmountController(),
    );
  }
}
