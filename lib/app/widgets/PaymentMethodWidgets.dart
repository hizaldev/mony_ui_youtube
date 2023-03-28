import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/ButtonWidgets.dart';

class PaymentMethodWidgets extends StatelessWidget {
  const PaymentMethodWidgets({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Method',
              style: semibold.copyWith(
                fontSize: 14,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 28,
                  width: 45,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/visa.png'),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Text(
                  '. . . .  . . . .  . . . .  1235',
                  style: semibold.copyWith(
                    fontSize: 14,
                  ),
                ),
                const Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(Icons.arrow_drop_down),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            const Divider(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Promo Code',
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                border: Border.all(color: grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                autocorrect: false,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Enter Your Promo Code',
                    hintStyle: regular.copyWith(
                      fontSize: 12,
                      color: grey,
                    )),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Payment Summary',
              style: semibold.copyWith(fontSize: 14),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Up',
                  style: regular.copyWith(fontSize: 12, color: grey),
                ),
                Text(
                  'Rp 100.000',
                  style: semibold.copyWith(fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Admin Fee',
                  style: regular.copyWith(fontSize: 12, color: grey),
                ),
                Text(
                  'Rp 1.500',
                  style: semibold.copyWith(fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: semibold.copyWith(fontSize: 14, color: purple),
                ),
                Text(
                  'Rp 101.500',
                  style: semibold.copyWith(
                    fontSize: 14,
                    color: purple,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Get.offAllNamed(Routes.TRANSACTION_SUCCESS);
              },
              child: ButtonWidgets(
                label: 'Top Up Now',
              ),
            )
          ],
        ),
      ),
    );
  }
}
