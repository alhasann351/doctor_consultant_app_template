import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.signupCursorColor,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        fontFamily: AppFontStyle.rubik,
        fontSize: 18,
        color: AppColors.signupEmailTextColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.signupFillColor,
        hintText: 'signup_input_email_hint_text'.tr,
        hintStyle: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontSize: 18,
          color: AppColors.signupHintTextColor,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.email_outlined,
            color: AppColors.signupPrefixIconColor,
            size: 30,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
