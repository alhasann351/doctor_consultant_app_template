import 'dart:async';

import 'package:doctor_consultant_app_template/views_models/controllers/onboarding_controller.dart';
import 'package:get/get.dart';

import '../../resources/routes/routes_name.dart';

class SplashService {
  final onboardingController = Get.put(OnboardingController());

  Future<void> isOnboardingScreen() async {
    bool isOnboardingCompleted =
        await onboardingController.isOnboardingCompleted();
    if (isOnboardingCompleted) {
      Timer(const Duration(seconds: 4),
          () => Get.offAllNamed(RoutesName.signupLoginScreen));
    } else {
      Timer(const Duration(seconds: 4),
          () => Get.offAllNamed(RoutesName.onboardingScreen));
    }
  }
}
