import 'package:doctor_consultant_app_template/views/doctors_booking/eye_doctor_booking/eye_doctor_booking_back_button.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class EyeDoctorBooking extends StatefulWidget {
  const EyeDoctorBooking({super.key});

  @override
  State<EyeDoctorBooking> createState() => _EyeDoctorBookingState();
}

class _EyeDoctorBookingState extends State<EyeDoctorBooking> {
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
          const EyeDoctorBookingBackButton(),
        ],
      ),
    );
  }
}
