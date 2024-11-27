import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';
import '../../../resources/routes/routes_name.dart';

class DoNotAccount extends StatelessWidget {
  const DoNotAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'do_not_account_text'.tr,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: AppColors.doNotAccountTextColor,
          ),
        ),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {
            Get.offNamed(RoutesName.signupScreen);
          },
          child: Text(
            'do_not_account_signup_text'.tr,
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
