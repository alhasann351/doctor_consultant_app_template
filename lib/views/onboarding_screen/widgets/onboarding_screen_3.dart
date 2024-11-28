import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen3 extends StatelessWidget {
  const OnboardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 280,
              width: 280,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(
                      ImagesIcons.onboardingImage3,
                    ),
                    fit: BoxFit.cover,
                  )),
            ),
            const SizedBox(height: 40),
            Text(
              'onboarding_title_text_3'.tr,
              style: const TextStyle(
                fontSize: 28,
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                color: AppColors.commonBlackColor,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'onboarding_description_text_3'.tr,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontFamily: AppFontStyle.rubik,
                  fontWeight: FontWeight.bold,
                  color: AppColors.commonGreyColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
