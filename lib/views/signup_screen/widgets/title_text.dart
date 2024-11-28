import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'signup_title_text'.tr,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.commonBlackColor,
          ),
        ),
      ),
    );
  }
}
