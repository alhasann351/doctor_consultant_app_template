import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/widgets/user_profile_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersProfileScreen extends StatelessWidget {
  const UsersProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'users_profile'.tr),
          const UserProfileDetails(),
        ],
      ),
    );
  }
}
