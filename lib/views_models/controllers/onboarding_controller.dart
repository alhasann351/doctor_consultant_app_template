import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingController extends GetxController {
  final pageController = PageController().obs;
  RxString onboardingScreenSkip = 'onboarding_skip_text'.tr.obs;
  RxInt currentScreenIndex = 0.obs;
  static const String onboardingKey = 'onboardingCompleted';

  Future<void> completeOnboarding() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool(onboardingKey, true);
  }

  Future<bool> isOnboardingCompleted() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getBool(onboardingKey) ?? false;
  }
}
