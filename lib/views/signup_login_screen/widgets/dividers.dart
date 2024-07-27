import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class Dividers extends StatelessWidget {
  const Dividers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Divider(
              color: AppColors.dividerColor,
              height: 10,
              indent: 60,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'or_text'.tr,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: AppColors.dividerTextColor,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Divider(
              color: AppColors.dividerColor,
              height: 10,
              endIndent: 60,
            ),
          ),
        ),
      ],
    );
  }
}
