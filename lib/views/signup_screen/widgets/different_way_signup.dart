import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DifferentWaySignup extends StatelessWidget {
  const DifferentWaySignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            AppUtils.showToastMessage('signup_with_apple_toast_message'.tr);
          },
          child: Card(
            color: AppColors.differentSignupCardBackgroundColor,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                ImagesIcons.signupWithApple,
                height: 35,
                width: 35,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            AppUtils.showToastMessage('signup_with_google_toast_message'.tr);
          },
          child: Card(
            color: AppColors.differentSignupCardBackgroundColor,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                ImagesIcons.signupWithGoogle,
                height: 35,
                width: 35,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            AppUtils.showToastMessage('signup_with_facebook_toast_message'.tr);
          },
          child: Card(
            color: AppColors.differentSignupCardBackgroundColor,
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                ImagesIcons.signupWithFacebook,
                height: 35,
                width: 35,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
