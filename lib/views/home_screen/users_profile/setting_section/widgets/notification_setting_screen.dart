import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/setting_section/widgets/switch_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/back_button_title.dart';
import '../../../../../resources/components/background_design.dart';

class NotificationSettingScreen extends StatelessWidget {
  const NotificationSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'notifications'.tr),
          Positioned(
              top: 70,
              bottom: 10,
              right: 10,
              left: 10,
              child: SwitchNotifications()),
        ],
      ),
    );
  }
}
