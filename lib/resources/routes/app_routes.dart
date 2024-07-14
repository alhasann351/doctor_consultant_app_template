import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/onboarding_screen.dart';
import 'package:doctor_consultant_app_template/views/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static appRoutes() => [
        GetPage(
          name: RoutesName.splashScreen,
          page: () => const SplashScreen(),
        ),
        GetPage(
          name: RoutesName.onboardingScreen,
          page: () => const OnboardingScreen(),
        ),
      ];
}
