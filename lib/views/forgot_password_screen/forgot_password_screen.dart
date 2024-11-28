import 'package:doctor_consultant_app_template/views/forgot_password_screen/widgets/input_email.dart';
import 'package:doctor_consultant_app_template/views/forgot_password_screen/widgets/submit_button.dart';
import 'package:doctor_consultant_app_template/views/forgot_password_screen/widgets/subtitle_text.dart';
import 'package:doctor_consultant_app_template/views/forgot_password_screen/widgets/title_text.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/app_colors.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.commonLightBlueAccentColor.withOpacity(0.3),
              AppColors.commonGreenAccentColor.withOpacity(0.3),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: const [
                TitleText(),
                SubtitleText(),
                SizedBox(height: 50),
                InputEmail(),
                SizedBox(height: 50),
                SubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
