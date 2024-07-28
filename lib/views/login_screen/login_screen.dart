import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/different_way_login.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/dividers.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/do_not_account.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/forgot_password.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/input_email.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/input_password.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/login_button.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/subtitle_text.dart';
import 'package:doctor_consultant_app_template/views/login_screen/widgets/title_text.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.loginTopBackgroundColor.withOpacity(0.3),
              AppColors.loginBottomBackgroundColor.withOpacity(0.3),
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
                SizedBox(height: 10),
                InputPassword(),
                ForgotPassword(),
                SizedBox(height: 40),
                LoginButton(),
                SizedBox(height: 20),
                Dividers(),
                SizedBox(height: 20),
                DifferentWayLogin(),
                SizedBox(height: 50),
                DoNotAccount(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
