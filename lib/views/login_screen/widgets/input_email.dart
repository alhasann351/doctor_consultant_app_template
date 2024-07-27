import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class InputEmail extends StatelessWidget {
  const InputEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.loginCursorColor,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontFamily: AppFontStyle.rubik,
        fontSize: 18,
        color: AppColors.loginEmailTextColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.loginFillColor,
        hintText: 'login_input_email_hint_text'.tr,
        hintStyle: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontSize: 18,
          color: AppColors.loginHintTextColor,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.person_2_outlined,
            color: AppColors.loginPrefixIconColor,
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
