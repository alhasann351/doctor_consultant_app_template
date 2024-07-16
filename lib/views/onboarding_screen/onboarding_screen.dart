import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/widgets/onboarding_screen_1.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/widgets/onboarding_screen_2.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/widgets/onboarding_screen_3.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final onboardingController = Get.put(OnboardingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    AppColors.topBackgroundColor.withOpacity(0.3),
                    AppColors.centerBackgroundColor.withOpacity(0.3),
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
                    AppColors.bottomBackgroundColor.withOpacity(0.3),
                    AppColors.centerBackgroundColor.withOpacity(0.3),
                  ],
                  stops: const [
                    0.1,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => PageView(
              controller: onboardingController.pageController.value,
              onPageChanged: (index) {
                onboardingController.currentScreenIndex.value = index;
                if (index == 2) {
                  onboardingController.onboardingScreenSkip.value =
                      'onboarding_finish_text'.tr;
                } else {
                  onboardingController.onboardingScreenSkip.value =
                      'onboarding_skip_text'.tr;
                }
              },
              children: const [
                OnboardingScreen1(),
                OnboardingScreen2(),
                OnboardingScreen3(),
              ],
            ),
          ),
          Obx(
            () => Container(
              alignment: const Alignment(0, 0.8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.offAllNamed(RoutesName.signupLoginScreen);
                      onboardingController.completeOnboarding();
                    },
                    child: Text(
                      onboardingController.onboardingScreenSkip.value,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.onboardingSkipFinishButtonTextColor,
                      ),
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: onboardingController.pageController.value,
                    count: 3,
                    axisDirection: Axis.horizontal,
                    effect: const WormEffect(
                        activeDotColor:
                            AppColors.smoothPageIndicatorActiveDotColor),
                  ),
                  onboardingController.currentScreenIndex.value == 2
                      ? const SizedBox(width: 10)
                      : GestureDetector(
                          onTap: () {
                            onboardingController.pageController.value.nextPage(
                              duration: const Duration(
                                milliseconds: 500,
                              ),
                              curve: Curves.decelerate,
                            );
                          },
                          child: Text(
                            'onboarding_next_text'.tr,
                            style: const TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.onboardingNextButtonTextColor,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
