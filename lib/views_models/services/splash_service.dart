import 'dart:async';

import 'package:get/get.dart';

import '../../resources/routes/routes_name.dart';

class SplashService {
  Future<void> isOnboardingScreen() async {
    Timer(const Duration(seconds: 4),
        () => Get.offAllNamed(RoutesName.onboardingScreen));
  }
}
