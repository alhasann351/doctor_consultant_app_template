import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class SubtitleText extends StatelessWidget {
  const SubtitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Align(
        alignment: Alignment.topCenter,
        child: Text(
          'forgot_password_subtitle_text'.tr,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.forgotPasswordSubtitleTextColor,
          ),
        ),
      ),
    );
  }
}
