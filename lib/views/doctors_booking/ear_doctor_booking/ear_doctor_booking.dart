import 'package:doctor_consultant_app_template/views/doctors_booking/ear_doctor_booking/ear_doctor_booking_back_button.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class EarDoctorBooking extends StatefulWidget {
  const EarDoctorBooking({super.key});

  @override
  State<EarDoctorBooking> createState() => _EarDoctorBookingState();
}

class _EarDoctorBookingState extends State<EarDoctorBooking> {
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
          const EarDoctorBookingBackButton(),
        ],
      ),
    );
  }
}
