import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/ButtonWidgets.dart';
import 'package:mony_ui_youtube/app/widgets/PaymentMethodWidgets.dart';

import '../controllers/phone_amount_controller.dart';

class PhoneAmountView extends GetView<PhoneAmountController> {
  const PhoneAmountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: background,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Stack(
          children: [
            ListView(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Change nominal\nPhone number',
                        style: semibold.copyWith(
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Phone number',
                        style: semibold.copyWith(
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        decoration: BoxDecoration(
                          border: Border.all(color: grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: TextField(
                          autocorrect: false,
                          onChanged: (value) =>
                              controller.readPhoneNumber(value),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Ex. 0827463528346',
                            hintStyle: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Obx(() => Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: controller.phoneNumber < 11
                          ? const SizedBox()
                          : Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amount',
                                  style: semibold.copyWith(
                                    fontSize: 18,
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                GestureDetector(
                                  onTap: () => controller.selectAmount(10000),
                                  child: AmountWidgets(
                                    amount: '10.000',
                                    grandTotal: '12.000',
                                    selected: controller.amount == 10000
                                        ? 'selected'
                                        : '',
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                GestureDetector(
                                  onTap: () => controller.selectAmount(15000),
                                  child: AmountWidgets(
                                    amount: '15.000',
                                    grandTotal: '16.000',
                                    selected: controller.amount == 15000
                                        ? 'selected'
                                        : '',
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                GestureDetector(
                                  onTap: () => controller.selectAmount(50000),
                                  child: AmountWidgets(
                                    amount: '50.000',
                                    grandTotal: '52.000',
                                    selected: controller.amount == 50000
                                        ? 'selected'
                                        : '',
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                GestureDetector(
                                  onTap: () => controller.selectAmount(100000),
                                  child: AmountWidgets(
                                    amount: '100.000',
                                    grandTotal: '101.000',
                                    selected: controller.amount == 100000
                                        ? 'selected'
                                        : '',
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                GestureDetector(
                                  onTap: () => controller.selectAmount(250000),
                                  child: AmountWidgets(
                                    amount: '250.000',
                                    grandTotal: '251.000',
                                    selected: controller.amount == 250000
                                        ? 'selected'
                                        : '',
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                GestureDetector(
                                  onTap: () => controller.selectAmount(500000),
                                  child: AmountWidgets(
                                    amount: '500.000',
                                    grandTotal: '502.000',
                                    selected: controller.amount == 500000
                                        ? 'selected'
                                        : '',
                                  ),
                                ),
                              ],
                            ),
                    )),
              ],
            ),
            Obx(() => Container(
                  alignment: const Alignment(0, 0.85),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: controller.amount > 0
                        ? GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.transparent,
                                  builder: (BuildContext context) {
                                    return PaymentMethodWidgets();
                                  });
                            },
                            child: ButtonWidgets(label: 'Continue'))
                        : const SizedBox(),
                  ),
                ))
          ],
        ));
  }
}

class AmountWidgets extends StatelessWidget {
  final String? amount;
  final String? grandTotal;
  final String? selected;
  const AmountWidgets({
    this.amount,
    this.grandTotal,
    this.selected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: selected == 'selected' ? purple : Colors.transparent),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${amount}',
                style: semibold.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                'Rp. ${grandTotal}',
                style: semibold.copyWith(
                  fontSize: 15,
                  color: purple,
                ),
              )
            ],
          ),
          Text(
            'Expanded on 10 Days',
            style: regular.copyWith(
              fontSize: 12,
              color: grey,
            ),
          )
        ],
      ),
    );
  }
}
