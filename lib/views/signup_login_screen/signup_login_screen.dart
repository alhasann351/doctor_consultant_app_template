import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/app_colors.dart';

class SignupLoginScreen extends StatefulWidget {
  const SignupLoginScreen({super.key});

  @override
  State<SignupLoginScreen> createState() => _SignupLoginScreenState();
}

class _SignupLoginScreenState extends State<SignupLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
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
                    AppColors.signupLoginTopBackgroundColor.withOpacity(0.3),
                    AppColors.signupLoginCenterBackgroundColor.withOpacity(0.3),
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
                    AppColors.signupLoginBottomBackgroundColor.withOpacity(0.3),
                    AppColors.signupLoginCenterBackgroundColor.withOpacity(0.3),
                  ],
                  stops: const [
                    0.1,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 90),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    'title_text'.tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.titleTextColor,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25),
                child: Text(
                  'description_text'.tr,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.descriptionTextColor,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [],
              ),
            ),
          )
        ],
      ),
    );
  }
}
