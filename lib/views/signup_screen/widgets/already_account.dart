import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlreadyAccount extends StatelessWidget {
  const AlreadyAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'already_account_text'.tr,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.alreadyAccountTextColor,
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            Get.offNamed(RoutesName.loginScreen);
          },
          child: Text(
            'already_account_login_text'.tr,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.commonLightBlueAccentColor,
            ),
          ),
        ),
      ],
    );
  }
}
