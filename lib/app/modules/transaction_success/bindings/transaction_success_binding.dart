import 'package:get/get.dart';

import '../controllers/transaction_success_controller.dart';

class TransactionSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TransactionSuccessController>(
      () => TransactionSuccessController(),
    );
  }
}
