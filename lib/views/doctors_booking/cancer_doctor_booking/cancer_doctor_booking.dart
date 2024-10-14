import 'package:doctor_consultant_app_template/views/doctors_booking/cancer_doctor_booking/cancer_doctor_booking_back_button.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class CancerDoctorBooking extends StatefulWidget {
  const CancerDoctorBooking({super.key});

  @override
  State<CancerDoctorBooking> createState() => _CancerDoctorBookingState();
}

class _CancerDoctorBookingState extends State<CancerDoctorBooking> {
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
          const CancerDoctorBookingBackButton(),
        ],
      ),
    );
  }
}
