import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, top: 8),
      child: GestureDetector(
        onTap: () {
          Get.toNamed(RoutesName.forgotPasswordScreen);
        },
        child: Text(
          'forgot_password_text'.tr,
          textAlign: TextAlign.right,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.forgotPasswordTextColor,
          ),
        ),
      ),
    );
  }
}
