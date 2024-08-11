import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsCategoryScreens extends StatelessWidget {
  const DoctorsCategoryScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Get.arguments['doctorsCategoryScreens'],
    );
  }
}
