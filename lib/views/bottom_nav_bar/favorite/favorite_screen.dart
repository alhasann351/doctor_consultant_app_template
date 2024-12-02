import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/components/background_design.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10),
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
          ),
        ],
      ),
    );
  }
}
