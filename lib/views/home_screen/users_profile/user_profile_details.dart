import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/assets/images_icons.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class UserProfileDetails extends StatelessWidget {
  const UserProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Text(
                        'user_name_text'.tr,
                        style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 16,
                          color: AppColors.commonWhiteColor,
                        ),
                      ),
                    ),
                    Text(
                      'users_title_text'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 20,
                        color: AppColors.commonWhiteColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 20),
                  child: CircleAvatar(
                    radius: 25,
                    foregroundImage: AssetImage(
                      ImagesIcons.profileImage,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
