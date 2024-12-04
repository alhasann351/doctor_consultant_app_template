import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/bottom_nav_bar/notification/widgets/notification_details.dart';
import 'package:doctor_consultant_app_template/views/bottom_nav_bar/notification/widgets/notification_title_text.dart';
import 'package:flutter/material.dart';

import '../../../resources/components/background_design.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          const NotificationTitleText(),
          NotificationDetails(),
        ],
      ),
    );
  }
}
