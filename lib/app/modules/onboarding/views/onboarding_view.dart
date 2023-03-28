import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mony_ui_youtube/app/routes/app_pages.dart';
import 'package:mony_ui_youtube/app/shared/theme.dart';
import 'package:mony_ui_youtube/app/widgets/OnBoardingWidgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.indicator,
          onPageChanged: ((value) {
            controller.page.value = value;
            print(controller.page.value);
          }),
          children: [
            // start page onboarding
            OnBoardingWidgets(
              image: 'on_boarding_1.png',
              title: 'Track Everything',
              subtitle:
                  'your financial journey start here. We are\nhere to help ypur tracking and handle every\ntransaction 24/day.',
            ),
            OnBoardingWidgets(
              image: 'on_boarding_2.png',
              title: 'Fast Transaction',
              subtitle:
                  'Get easy to pay all yours bills with just a\nfew taps. paying your bill become fast \nand efficient. Enjoy',
            ),
            OnBoardingWidgets(
              image: 'on_boarding_3.png',
              title: 'Enjoy Everyday!',
              subtitle:
                  'Be wise, and discover your best financial\nexperience with us. Everything is in\nyour hands!',
            ),
            // end
          ],
        ),
        Container(
          alignment: Alignment(0.8, -0.85),
          child: GestureDetector(
            onTap: () {
              controller.indicator.jumpToPage(3);
            },
            child: Text('Skip'),
          ),
        ),
        Obx(() => Container(
              alignment: Alignment(0, 0.85),
              child: controller.page.value != 2
                  ? SmoothPageIndicator(
                      controller: controller.indicator,
                      count: 3,
                      effect: SlideEffect(
                        activeDotColor: purple,
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: darkGrey,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        Get.offAllNamed(Routes.SIGNUP);
                      },
                      child: Container(
                        height: 55,
                        width: Get.width * 0.8,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: purple,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Getting Started',
                          style: semibold.copyWith(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ))
      ],
    ));
  }
}
