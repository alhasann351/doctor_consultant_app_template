import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const BackButtonTitle(titleText: ''),
            SizedBox(
              height: 50,
              width: 50,
              child: GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: AppColors.commonWhiteColor,
                  foregroundImage: NetworkImage(
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
