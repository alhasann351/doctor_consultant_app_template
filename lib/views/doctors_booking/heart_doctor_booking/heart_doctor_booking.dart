import 'package:doctor_consultant_app_template/views/doctors_booking/heart_doctor_booking/heart_doctor_booking_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/card_doctor_information.dart';
import '../../../resources/components/date_select_text.dart';
import '../../../resources/fonts/app_font_style.dart';

class HeartDoctorBooking extends StatefulWidget {
  const HeartDoctorBooking({super.key});

  @override
  State<HeartDoctorBooking> createState() => _HeartDoctorBookingState();
}

class _HeartDoctorBookingState extends State<HeartDoctorBooking> {
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
          const HeartDoctorBookingBackButton(),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 10, right: 10, bottom: 10),
                    child: CardDoctorInformation(
                      doctorName: Get.arguments['doctorName'.toString()],
                      speciality: Get.arguments['doctorSpeciality'.toString()],
                      hospitalName: Get.arguments['hospitalName'.toString()],
                      textStyle: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.doctorNameColor),
                      backgroundColor: AppColors.doctorInfoCardBackgroundColor,
                      doctorImage: Get.arguments['doctorImage'.toString()],
                      rowChild: const Row(
                        children: [
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            size: 20,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 0),
                    child: DateSelectText(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
