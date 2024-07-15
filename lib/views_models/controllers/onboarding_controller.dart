import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final pageController = PageController().obs;
  RxString onboardingScreenSkip = 'onboarding_skip_text'.tr.obs;
  RxInt currentScreenIndex = 0.obs;
}
