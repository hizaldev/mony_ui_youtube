import 'package:get/get.dart';

class PhoneAmountController extends GetxController {
  RxInt phoneNumber = 0.obs;
  RxInt amount = 0.obs;

  readPhoneNumber(index) {
    print(index.toString().length);
    var length = index.toString().length;
    phoneNumber.value = length;
    // reset for lengt when number deleted all
    if (length == 0) {
      amount.value = 0;
    }
    update();
  }

  selectAmount(value) {
    print(value);
    amount.value = value;
    update();
  }
}
