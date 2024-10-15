import 'package:doctor_consultant_app_template/views/doctors_booking/skin_doctor_booking/skin_doctor_booking_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/card_doctor_information.dart';
import '../../../resources/fonts/app_font_style.dart';

class SkinDoctorBooking extends StatefulWidget {
  const SkinDoctorBooking({super.key});

  @override
  State<SkinDoctorBooking> createState() => _SkinDoctorBookingState();
}

class _SkinDoctorBookingState extends State<SkinDoctorBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
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
          ),
          const SkinDoctorBookingBackButton(),
          CardDoctorInformation(
              doctorName: 'doctorName',
              speciality: 'speciality',
              hospitalName: 'hospitalName',
              textStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.doctorNameColor),
              backgroundColor: AppColors.doctorInfoCardBackgroundColor,
              doctorImage: Get.arguments['doctorImage'.toString()]),
        ],
      ),
    );
  }
}
