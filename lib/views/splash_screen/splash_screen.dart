import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/app_colors.dart';
import '../../resources/fonts/app_font_style.dart';
import '../../views_models/controllers/onboarding_controller.dart';
import '../../views_models/services/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService = SplashService();
  final onboardingController = Get.put(OnboardingController());

  @override
  void initState() {
    super.initState();
    splashService.isOnboardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 342,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.8,
                  colors: [
                    AppColors.commonLightBlueAccentColor.withOpacity(0.3),
                    AppColors.commonWhiteColor.withOpacity(0.3),
                  ],
                  stops: const [
                    0.1,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 342,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomRight,
                  radius: 0.8,
                  colors: [
                    AppColors.commonGreenAccentColor.withOpacity(0.3),
                    AppColors.commonWhiteColor.withOpacity(0.3),
                  ],
                  stops: const [
                    0.1,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
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
