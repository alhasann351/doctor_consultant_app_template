import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class BookingBackButton extends StatelessWidget {
  const BookingBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Row(
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.cancerScreenBackButtonCardBackgroundColor,
                  child: const Icon(
                    CupertinoIcons.back,
                    color: AppColors.cancerScreenBackButtonIconColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'select_time'.tr,
                style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.cancerTitleTextColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
