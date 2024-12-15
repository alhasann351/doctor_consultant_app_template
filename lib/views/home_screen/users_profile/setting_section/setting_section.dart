import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';
import '../../../../resources/routes/routes_name.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'setting_section'.tr,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.commonBlackColor,
          ),
        ),
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RoutesName.notificationsSettingScreen);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColors.commonWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'notifications'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.commonBlackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RoutesName.languagesSettingScreen);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColors.commonWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'languages'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.commonBlackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
