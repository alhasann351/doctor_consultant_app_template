import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/widgets/user_details_input.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/widgets/user_image_show.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetails extends StatelessWidget {
  const UserDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'users_details'.tr),
          Positioned(
            top: 70,
            bottom: 10,
            left: 10,
            right: 10,
            child: SafeArea(
              child: ListView(
                children: [
                  UserImageShow(),
                  UserDetailsInput(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
