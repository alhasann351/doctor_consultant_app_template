import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class SearchInputDescriptionText extends StatelessWidget {
  const SearchInputDescriptionText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
      child: Text(
        'search_input_description_text'.tr,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontFamily: AppFontStyle.rubik,
          color: AppColors.commonBlackColor,
        ),
      ),
    );
  }
}
