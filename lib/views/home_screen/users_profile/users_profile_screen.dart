import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/my_section/my_section.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/policy_section/policy_section.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/setting_section/setting_section.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/user_details_section/user.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/widgets/logout_button.dart';
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
          Positioned(
            top: 70,
            bottom: 10,
            left: 10,
            right: 10,
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: const [
                        User(),
                        SizedBox(height: 20),
                        MySection(),
                        SizedBox(height: 20),
                        SettingSection(),
                        SizedBox(height: 20),
                        PolicySection(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  const LogoutButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
