import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/routes/routes_name.dart';

class BackButtonDoctorProfile extends StatelessWidget {
  const BackButtonDoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {
                  Get.offAllNamed(RoutesName.homeScreen);
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: AppColors.backButtonCardBackgroundColor,
                  child: const Icon(
                    CupertinoIcons.back,
                    color: AppColors.backButtonIconColor,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor:
                      AppColors.doctorProfileCircleAvatarBackgroundColor,
                  foregroundImage: AssetImage(
                    Get.arguments['image'.toString()],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
