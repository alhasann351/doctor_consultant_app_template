import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class PopularDoctors extends StatelessWidget {
  const PopularDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'popular_doctors_title_text'.tr,
                style: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.doctorsCategoryTitleTextColor,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
