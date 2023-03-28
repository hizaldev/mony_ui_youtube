import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';

import '../controllers/balance_controller.dart';

class BalanceView extends GetView<BalanceController> {
  const BalanceView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Balance',
                    style: medium.copyWith(color: grey, fontSize: 16),
                  ),
                  Text(
                    'Rp 570.000',
                    style: semibold.copyWith(fontSize: 30),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 38,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '4/2022',
                            style: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '5/2022',
                            style: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '6/2022',
                            style: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '7/2022',
                            style: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '8/2022',
                            style: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            border: Border.all(color: grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            'last Month',
                            style: regular.copyWith(
                              fontSize: 12,
                              color: grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(30),
                    height: 105,
                    padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                          image: AssetImage('assets/images/mask_circle.png'),
                          fit: BoxFit.cover),
                      color: lighRed,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage('assets/icons/ic_splash.png'),
                              scale: 2,
                            )),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Monthly Expense',
                              style: regular.copyWith(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              '-RP 25.230.000',
                              style: semibold.copyWith(
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              color: background,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Last Transaction',
                    style: semibold.copyWith(
                      fontSize: 18,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today, Sept',
                          style: semibold.copyWith(fontSize: 12),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        const Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: purple,
                                  child: Text('T'),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Top Up',
                                      style: semibold.copyWith(fontSize: 12),
                                    ),
                                    Text(
                                      '09.00 Am',
                                      style: semibold.copyWith(
                                          fontSize: 12, color: darkGrey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Expanded(
                                child: Text(
                              '+Rp 700.000',
                              style: semibold.copyWith(
                                fontSize: 12,
                                color: purple,
                              ),
                              textAlign: TextAlign.right,
                            ))
                          ],
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: purple,
                                  child: Text('B'),
                                ),
                                const SizedBox(
                                  width: 16,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'BPJS',
                                      style: semibold.copyWith(fontSize: 12),
                                    ),
                                    Text(
                                      '11.00 Am',
                                      style: semibold.copyWith(
                                          fontSize: 12, color: darkGrey),
                                    )
                                  ],
                                )
                              ],
                            ),
                            Expanded(
                                child: Text(
                              '-Rp 500.000',
                              style: semibold.copyWith(
                                fontSize: 12,
                                color: subtleRed,
                              ),
                              textAlign: TextAlign.right,
                            ))
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
