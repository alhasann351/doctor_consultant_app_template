import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  List onboardingInformation = [
    {
      'image': ImagesIcons.onboardingImage1,
      'title': 'onboarding_title_text_1'.tr,
      'description': 'onboarding_description_text_1'.tr,
    },
    {
      'image': ImagesIcons.onboardingImage2,
      'title': 'onboarding_title_text_2'.tr,
      'description': 'onboarding_description_text_2'.tr,
    },
    {
      'image': ImagesIcons.onboardingImage3,
      'title': 'onboarding_title_text_3'.tr,
      'description': 'onboarding_description_text_3'.tr,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: PageView(
        children: [
          Center(
            child: Image.asset(ImagesIcons.onboardingImage1),
          ),
          Center(
            child: Image.asset(ImagesIcons.onboardingImage2),
          ),
          Center(
            child: Image.asset(ImagesIcons.onboardingImage3),
          ),
        ],
      ),
    );
  }
}
