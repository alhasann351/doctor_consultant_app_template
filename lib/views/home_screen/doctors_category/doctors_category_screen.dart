import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsCategoryScreen extends StatelessWidget {
  const DoctorsCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Get.arguments['doctorsCategoryScreens'],
    );
  }
}
