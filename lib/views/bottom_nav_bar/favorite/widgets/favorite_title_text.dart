import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class FavoriteTitleText extends StatelessWidget {
  const FavoriteTitleText({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Text(
          'favorite_title_text'.tr,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            fontFamily: AppFontStyle.rubik,
            color: AppColors.commonBlackColor,
          ),
        ),
      ),
    );
  }
}
