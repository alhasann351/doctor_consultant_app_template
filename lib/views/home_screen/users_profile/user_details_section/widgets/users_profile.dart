import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/assets/images_icons.dart';
import '../../../../../resources/colors/app_colors.dart';
import '../../../../../resources/fonts/app_font_style.dart';

class UsersProfile extends StatelessWidget {
  const UsersProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.usersProfileDetailsTopLeftBackgroundColor
                .withOpacity(0.7),
            AppColors.usersProfileDetailsBottomRightBackgroundColor
                .withOpacity(0.7),
          ],
        ),
      ),
      child: SafeArea(
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
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 20),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutesName.userProfileScreen);
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundColor: AppColors.commonWhiteColor,
                        foregroundImage: AssetImage(
                          ImagesIcons.profileImage,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
