import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DifferentWayLogin extends StatelessWidget {
  const DifferentWayLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            AppUtils.showToastMessage('login_with_apple_toast_message'.tr);
          },
          child: Card(
            color: AppColors.differentLoginCardBackgroundColor,
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
            AppUtils.showToastMessage('login_with_google_toast_message'.tr);
          },
          child: Card(
            color: AppColors.differentLoginCardBackgroundColor,
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
            AppUtils.showToastMessage('login_with_facebook_toast_message'.tr);
          },
          child: Card(
            color: AppColors.differentLoginCardBackgroundColor,
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
