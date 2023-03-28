import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  PageController indicator = PageController();

  RxInt page = 0.obs;
}
