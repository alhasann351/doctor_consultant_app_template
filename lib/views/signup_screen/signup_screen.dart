import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/input_email.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/input_name.dart';
import 'package:doctor_consultant_app_template/views/signup_screen/widgets/input_password.dart';
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
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.signupButtonBackgroundColor.withOpacity(0.3),
              AppColors.loginButtonBackgroundColor.withOpacity(0.3),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(
            children: const [
              TitleText(),
              InputName(),
              InputEmail(),
              InputPassword(),
            ],
          ),
        ),
      ),
    );
  }
}
