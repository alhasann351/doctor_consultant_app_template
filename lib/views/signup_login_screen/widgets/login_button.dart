import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/rounded_button.dart';
import '../../../resources/fonts/app_font_style.dart';
import '../../../resources/routes/routes_name.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context).size.width,
      child: RoundedButton(
        backgroundColor: AppColors.loginButtonBackgroundColor.withOpacity(0.8),
        title: 'login_text'.tr,
        textStyle: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: AppColors.loginButtonTextColor,
        ),
        onTap: () {
          Get.toNamed(RoutesName.loginScreen);
        },
      ),
    );
  }
}
