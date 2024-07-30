import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/assets/images_icons.dart';
import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'home_user_title_text'.tr,
                      style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 20,
                          color: AppColors.homeUserTitleTextColor),
                    ),
                    Text(
                      'home_title_text'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 25,
                        color: AppColors.homeTitleTextColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
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
