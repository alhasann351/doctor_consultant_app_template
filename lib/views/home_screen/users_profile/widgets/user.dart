import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';

import '../../../../resources/assets/images_icons.dart';

class User extends StatelessWidget {
  const User({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: AppColors.commonWhiteColor,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage(ImagesIcons.profileImage),
                    backgroundColor: AppColors.commonWhiteColor,
                    radius: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Al-Hasan',
                          style: TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: AppColors.commonBlackColor),
                        ),
                        Text(
                          '+8801828463871',
                          style: TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontSize: 15,
                              color: AppColors.commonGreyColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
