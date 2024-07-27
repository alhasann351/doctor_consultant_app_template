import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/rounded_button.dart';
import '../../../resources/fonts/app_font_style.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context).size.width,
      child: RoundedButton(
        title: 'login_button_text'.tr,
        backgroundColor: AppColors.loginButtonColor.withOpacity(0.8),
        textStyle: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: AppColors.loginTextColor,
        ),
        onTap: () {},
      ),
    );
  }
}
