import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/components/card_doctor_information.dart';
import '../../../../resources/components/rating_icons.dart';
import '../../../../resources/fonts/app_font_style.dart';
import 'all_category_doctors_booking/widgets/booking_confirm_button.dart';
import 'all_category_doctors_booking/widgets/show_available_times.dart';
import 'all_category_doctors_booking/widgets/show_calendar.dart';

class DoctorsBookingScreen extends StatefulWidget {
  const DoctorsBookingScreen({super.key});

  @override
  State<DoctorsBookingScreen> createState() => _DoctorsBookingScreenState();
}

class _DoctorsBookingScreenState extends State<DoctorsBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'select_time'.tr),
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
                          color: AppColors.commonBlackColor),
                      backgroundColor: AppColors.commonWhiteColor,
                      doctorImage: Get.arguments['doctorImage'.toString()],
                      rowChild: const RatingIcons(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: ShowCalendar(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child:
                        ShowAvailableTimes(), // Return empty widget when ListView is hidden
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: BookingConfirmButton(),
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
