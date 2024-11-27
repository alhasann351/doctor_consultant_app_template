import 'package:doctor_consultant_app_template/views/signup_login_screen/widgets/description_text.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/widgets/dividers.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/widgets/login_button.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/widgets/signup_button.dart';
import 'package:doctor_consultant_app_template/views/signup_login_screen/widgets/title_text.dart';
import 'package:flutter/material.dart';

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
          Center(
            child: ListView(
              shrinkWrap: true,
              children: const [
                TitleText(),
                SizedBox(height: 20),
                Center(
                  child: Padding(
                    padding: EdgeInsets.all(45),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        DescriptionText(),
                        SizedBox(height: 50),
                        SignupButton(),
                        SizedBox(height: 20),
                        Dividers(),
                        SizedBox(height: 20),
                        LoginButton(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
