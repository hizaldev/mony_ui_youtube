import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), (() {
      Get.offAllNamed(Routes.ONBOARDING);
    }));
    return Scaffold(
        body: Container(
      width: Get.width,
      height: Get.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background_splash.png'),
        ),
      ),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/ic_splash.png'),
              scale: 2,
            ),
          ),
        ),
      ),
    ));
  }
}
