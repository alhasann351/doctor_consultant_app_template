import 'dart:async';

import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:get/get.dart';

class SplashService {
  Future<void> isOnboardingScreen() async {
    Timer(const Duration(seconds: 4),
        () => Get.offAllNamed(RoutesName.onboardingScreen));
  }
}
