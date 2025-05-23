import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/components/radial_gradient_background_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/app_colors.dart';
import '../../resources/fonts/app_font_style.dart';
import '../../views_models/controllers/onboarding_controller.dart';
import '../../views_models/controllers/switch_languages_controller.dart';
import '../../views_models/services/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService = SplashService();
  final onboardingController = Get.put(OnboardingController());
  final SwitchLanguagesController switchLanguagesController =
      Get.put(SwitchLanguagesController());

  @override
  void initState() {
    super.initState();
    splashService.isOnboardingScreen();
    switchLanguagesController.loadLanguage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const RadialGradientBackgroundDesign(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImagesIcons.splashScreenIcon,
                  height: 105,
                  width: 205,
                ),
                const SizedBox(height: 10),
                Text(
                  'splash_text_1'.tr,
                  style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 26,
                    color: AppColors.commonBlackColor,
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  'splash_text_2'.tr,
                  style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: AppColors.commonBlackColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
