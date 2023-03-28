import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';

import '../controllers/transaction_success_controller.dart';

class TransactionSuccessView extends GetView<TransactionSuccessController> {
  const TransactionSuccessView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: purple,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 278,
                width: 278,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Success.png'),
                    scale: 2.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                'Transaction Success',
                style: semibold.copyWith(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Text(
                'Yashh!! enjoy your bill\nDon\'t forget to check on your history',
                style: regular.copyWith(
                  fontSize: 16,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                onTap: () {
                  Get.offAllNamed(Routes.BOTTOMNAVIGATION);
                },
                child: Container(
                  height: 55,
                  width: Get.width * 0.8,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Back to Home',
                    style: semibold.copyWith(
                      fontSize: 18,
                      color: purple,
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
