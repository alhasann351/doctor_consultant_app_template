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
              color: AppColors.commonGreyColor,
              height: 10,
              indent: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            'login_or_text'.tr,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: AppColors.commonBlackColor,
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Divider(
              color: AppColors.commonGreyColor,
              height: 10,
              endIndent: 40,
            ),
          ),
        ),
      ],
    );
  }
}
