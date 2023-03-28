import 'package:get/get.dart';

class WalletController extends GetxController {
  RxInt setAmountIndex = 0.obs;

  setIndex(index) {
    print(index);
    setAmountIndex.value = index;
    update();
  }
}
