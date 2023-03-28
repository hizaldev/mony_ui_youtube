import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/MenuItemWidgets.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hi, Felicia',
                style: semibold.copyWith(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
              Text(
                'Welcome',
                style: regular.copyWith(fontSize: 12, color: grey),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage('assets/images/Badges.png'),
                ),
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  width: Get.width,
                  height: 234,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background_banner.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Balance',
                        style: regular.copyWith(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Rp 570.000',
                        style: semibold.copyWith(
                          fontSize: 30,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/icons/ic_pay.png'),
                                      scale: 2,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Pay',
                                style: regular.copyWith(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              print('wallet tapped');
                              Get.toNamed(Routes.WALLET);
                            },
                            child: Column(
                              children: [
                                Container(
                                  width: 45,
                                  height: 45,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: 20,
                                    height: 20,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/icons/ic_topup.png'),
                                        scale: 2,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Text(
                                  'Top Up',
                                  style: regular.copyWith(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Container(
                                  width: 20,
                                  height: 20,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/icons/ic_scan.png'),
                                      scale: 2,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Text(
                                'Scan',
                                style: regular.copyWith(
                                  fontSize: 12,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Pay Bill',
                      style: semibold.copyWith(
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.PHONE_AMOUNT);
                          },
                          child: MenuItemWidgets(
                            image: 'ic_phone.png',
                            label: 'Phone',
                          ),
                        ),
                        MenuItemWidgets(
                          image: 'ic_data.png',
                          label: 'Data',
                        ),
                        MenuItemWidgets(
                          image: 'ic_invest.png',
                          label: 'Invest',
                        ),
                        MenuItemWidgets(
                          image: 'ic_game.png',
                          label: 'Game',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MenuItemWidgets(
                          image: 'ic_web.png',
                          label: 'Web',
                        ),
                        MenuItemWidgets(
                          image: 'ic_pln.png',
                          label: 'PLN',
                        ),
                        MenuItemWidgets(
                          image: 'ic_bpjs.png',
                          label: 'Invest',
                        ),
                        MenuItemWidgets(
                          image: 'ic_air.png',
                          label: 'Water',
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                width: Get.width,
                height: 900,
                color: background,
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Last Transaction',
                              style: semibold.copyWith(fontSize: 18),
                            ),
                            Text(
                              'Details',
                              style: semibold.copyWith(
                                fontSize: 12,
                                color: purple,
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: Get.width,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Today, Sept 3'),
                              const SizedBox(
                                height: 10,
                              ),
                              Divider(
                                color: darkGrey,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Top Up',
                                            style:
                                                semibold.copyWith(fontSize: 12),
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
                                      '+Rp 700.00',
                                      style: semibold.copyWith(
                                        fontSize: 12,
                                        color: purple,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 14,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'BPJS',
                                            style:
                                                semibold.copyWith(fontSize: 12),
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
                                      '-Rp 500.00',
                                      style: semibold.copyWith(
                                        fontSize: 12,
                                        color: subtleRed,
                                      ),
                                      textAlign: TextAlign.right,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
