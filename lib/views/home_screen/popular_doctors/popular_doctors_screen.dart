import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/popular_doctors/widgets/popular_doctors_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularDoctorsScreen extends StatefulWidget {
  const PopularDoctorsScreen({super.key});

  @override
  State<PopularDoctorsScreen> createState() => _PopularDoctorsScreenState();
}

class _PopularDoctorsScreenState extends State<PopularDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'popular_doctors_title_text'.tr),
          const PopularDoctorsInformation(),
        ],
      ),
    );
  }
}
