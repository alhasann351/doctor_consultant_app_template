import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class DifferentWaySignup extends StatelessWidget {
  const DifferentWaySignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
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
        Card(
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
        Card(
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
      ],
    );
  }
}
