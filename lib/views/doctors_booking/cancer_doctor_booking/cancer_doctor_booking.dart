import 'package:doctor_consultant_app_template/views/doctors_booking/cancer_doctor_booking/cancer_doctor_booking_back_button.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/rating_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/card_doctor_information.dart';
import '../../../resources/components/date_select_text.dart';
import '../../../resources/components/rounded_button.dart';
import '../../../resources/components/time_select_text.dart';
import '../../../resources/fonts/app_font_style.dart';
import '../../../views_models/controllers/card_doctor_booking_time_controller.dart';
import '../widgets/available_times.dart';
import '../widgets/show_calendar.dart';

class CancerDoctorBooking extends StatefulWidget {
  const CancerDoctorBooking({super.key});

  @override
  State<CancerDoctorBooking> createState() => _CancerDoctorBookingState();
}

class _CancerDoctorBookingState extends State<CancerDoctorBooking> {
  final List<String> doctorAvailableDate = [
    'Sat, 19 Oct',
    'Sun, 20 Oct',
    'Mon, 21 Oct',
    'Tue, 22 Oct',
    'Wed, 23 Oct',
    'Thu, 24 Oct',
    'Fri, 25 Oct',
  ];
  final List<String> doctorAvailableSlot = [
    'Slot available',
    'Slot available',
    'Slot available',
    'Slot available',
    'Slot available',
    'Slot available',
    'Slot available',
  ];

  final CardDoctorBookingTimeController cardDoctorBookingTimeController =
      Get.put(CardDoctorBookingTimeController());

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
                      rowChild: const RatingIcons(),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 0),
                    child: DateSelectText(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: ShowCalendar(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 0),
                    child: TimeSelectText(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child:
                        AvailableTimes(), // Return empty widget when ListView is hidden
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: SizedBox(
                      height: 54,
                      width: MediaQuery.of(context).size.width,
                      child: RoundedButton(
                        title: 'booking'.tr,
                        textStyle: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        onTap: () {
                          cardDoctorBookingTimeController.goToDetailScreen();
                        },
                      ),
                    ),
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
