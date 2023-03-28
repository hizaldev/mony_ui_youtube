import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/ButtonWidgets.dart';
import 'package:mony_ui_youtube/app/widgets/PaymentMethodWidgets.dart';

import '../controllers/wallet_controller.dart';

class WalletView extends GetView<WalletController> {
  const WalletView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: background,
          iconTheme: const IconThemeData(color: Colors.black),
        ),
        body: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                Text(
                  'Top up your \nwallet number',
                  style: semibold.copyWith(
                    fontSize: 18,
                  ),
                ),
                Text(
                  'Insert amount (Min. Rp 10.000)',
                  style: regular.copyWith(
                    fontSize: 12,
                    color: darkGrey,
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextField(
                  autocorrect: false,
                  decoration: InputDecoration(
                    prefixIcon: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          child: Text(
                            'Rp',
                            style: semibold.copyWith(
                              fontSize: 18,
                              color: grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    hintText: '0',
                    hintStyle: semibold.copyWith(fontSize: 18),
                  ),
                  textAlign: TextAlign.end,
                  style: semibold.copyWith(
                    fontSize: 18,
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'Amount',
                  style: semibold.copyWith(fontSize: 18),
                ),
                Text(
                  'Instanly add the nominal',
                  style: regular.copyWith(
                    fontSize: 12,
                    color: grey,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => controller.setIndex(10000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 10000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color: controller.setAmountIndex.value == 10000
                                    ? purple
                                    : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '10.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color: controller.setAmountIndex.value == 10000
                                    ? Colors.white
                                    : grey,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.setIndex(50000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 50000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color: controller.setAmountIndex.value == 50000
                                    ? purple
                                    : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '50.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color: controller.setAmountIndex.value == 50000
                                    ? Colors.white
                                    : grey,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.setIndex(100000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 100000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color: controller.setAmountIndex.value == 100000
                                    ? purple
                                    : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '100.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color: controller.setAmountIndex.value == 100000
                                    ? Colors.white
                                    : grey,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.setIndex(250000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 250000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color: controller.setAmountIndex.value == 250000
                                    ? purple
                                    : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '250.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color: controller.setAmountIndex.value == 250000
                                    ? Colors.white
                                    : grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 16,
                ),
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                          onTap: () => controller.setIndex(500000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 500000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color: controller.setAmountIndex.value == 500000
                                    ? purple
                                    : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '500.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color: controller.setAmountIndex.value == 500000
                                    ? Colors.white
                                    : grey,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.setIndex(1000000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 1000000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color:
                                    controller.setAmountIndex.value == 1000000
                                        ? purple
                                        : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '1.000.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color:
                                    controller.setAmountIndex.value == 1000000
                                        ? Colors.white
                                        : grey,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => controller.setIndex(1500000),
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color: controller.setAmountIndex.value == 1500000
                                  ? purple
                                  : Colors.transparent,
                              border: Border.all(
                                color:
                                    controller.setAmountIndex.value == 1500000
                                        ? purple
                                        : grey,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              '1.500.000',
                              style: regular.copyWith(
                                fontSize: 12,
                                color:
                                    controller.setAmountIndex.value == 1500000
                                        ? Colors.white
                                        : grey,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0.85),
              child: GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      backgroundColor: Colors.transparent,
                      builder: (BuildContext context) {
                        return PaymentMethodWidgets();
                      });
                },
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ButtonWidgets(label: 'Continue'),
                ),
              ),
            )
          ],
        ));
  }
}
