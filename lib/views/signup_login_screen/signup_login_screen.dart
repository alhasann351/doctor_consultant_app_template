import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
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
          ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 70),
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
              const SizedBox(height: 100),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(45),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'description_text'.tr,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: AppColors.descriptionTextColor,
                        ),
                      ),
                      const SizedBox(height: 100),
                      SizedBox(
                        height: 54,
                        width: MediaQuery.of(context).size.width,
                        child: RoundedButton(
                          backgroundColor: AppColors.signupButtonBackgroundColor
                              .withOpacity(0.8),
                          title: 'signup_text'.tr,
                          textStyle: const TextStyle(
                            fontFamily: AppFontStyle.rubik,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.signupButtonTextColor,
                          ),
                          onTap: () {
                            Get.offAllNamed(RoutesName.signupScreen);
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Divider(
                                color: AppColors.dividerColor,
                                height: 10,
                                indent: 60,
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              'or_text'.tr,
                              style: const TextStyle(
                                fontFamily: AppFontStyle.rubik,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                color: AppColors.dividerTextColor,
                              ),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: const Divider(
                                color: AppColors.dividerColor,
                                height: 10,
                                endIndent: 60,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: 54,
                        width: MediaQuery.of(context).size.width,
                        child: RoundedButton(
                          backgroundColor: AppColors.loginButtonBackgroundColor
                              .withOpacity(0.8),
                          title: 'login_text'.tr,
                          textStyle: const TextStyle(
                            fontFamily: AppFontStyle.rubik,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: AppColors.loginButtonTextColor,
                          ),
                          onTap: () {
                            Get.offAllNamed(RoutesName.loginScreen);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
