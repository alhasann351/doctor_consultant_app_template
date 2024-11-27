import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/already_account.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/different_way_signup.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/dividers.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/input_email.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/input_name.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/input_password.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/signup_button.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/subtitle_text.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/title_text.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
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
              AppColors.signupBottomBackgroundColor.withOpacity(0.3),
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
                InputName(),
                SizedBox(height: 10),
                InputEmail(),
                SizedBox(height: 10),
                InputPassword(),
                SizedBox(height: 50),
                SignupButton(),
                SizedBox(height: 20),
                Dividers(),
                SizedBox(height: 20),
                DifferentWaySignup(),
                SizedBox(height: 50),
                AlreadyAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
