import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class LiveDoctorsName extends StatelessWidget {
  const LiveDoctorsName({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
          color: AppColors.liveDoctorsNameBackgroundColor,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0, top: 3),
        child: Text(
          Get.arguments['liveDoctorsNames'.toString()] + ' is on live',
          style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.commonWhiteColor),
        ),
      ),
    );
  }
}
