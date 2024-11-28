import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../colors/app_colors.dart';
import '../fonts/app_font_style.dart';

class BackButtonTitle extends StatelessWidget {
  final String titleText;

  const BackButtonTitle({super.key, required this.titleText});

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
                  color: AppColors.commonWhiteColor,
                  child: const Icon(
                    CupertinoIcons.back,
                    color: AppColors.commonBlackColor,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                titleText,
                style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.commonBlackColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
