import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'description_text'.tr,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontFamily: AppFontStyle.rubik,
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: AppColors.descriptionTextColor,
      ),
    );
  }
}
