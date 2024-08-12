import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/doctors_category_screens/widgets/back_button_category_title.dart';
import 'package:doctor_consultant_app_template/views/doctors_category_screens/widgets/doctor_information.dart';
import 'package:flutter/material.dart';

class CancerDoctorsScreen extends StatelessWidget {
  const CancerDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.cancerScreenTopBackgroundColor.withOpacity(0.2),
              AppColors.cancerScreenBottomBackgroundColor.withOpacity(0.2),
            ],
          ),
        ),
        child: ListView(
          scrollDirection: Axis.vertical,
          //shrinkWrap: true,
          children: [
            const BackButtonCategoryTitle(),
            DoctorInformation(),
          ],
        ),
      ),
    );
  }
}
