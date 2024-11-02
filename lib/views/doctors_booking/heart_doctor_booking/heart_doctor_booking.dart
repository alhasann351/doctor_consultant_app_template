import 'package:doctor_consultant_app_template/views/doctors_booking/heart_doctor_booking/heart_doctor_booking_back_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/components/card_doctor_booking_time.dart';
import '../../../resources/components/card_doctor_information.dart';
import '../../../resources/components/date_select_text.dart';
import '../../../resources/fonts/app_font_style.dart';
import '../../../views_models/controllers/CardDoctorBookingTimeController.dart';

class HeartDoctorBooking extends StatefulWidget {
  const HeartDoctorBooking({super.key});

  @override
  State<HeartDoctorBooking> createState() => _HeartDoctorBookingState();
}

class _HeartDoctorBookingState extends State<HeartDoctorBooking> {
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
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: SizedBox(
                      height: 80,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: doctorAvailableDate.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              cardDoctorBookingTimeController
                                  .selectedCardIndex(index);
                              //cardDoctorBookingTimeController.toggleGridview();
                            },
                            child: Obx(
                              () => SizedBox(
                                width: 170,
                                child: CardDoctorBookingTime(
                                  backgroundColor:
                                      cardDoctorBookingTimeController
                                                  .selectedCardIndex.value ==
                                              index
                                          ? AppColors.cardSelectedColor
                                          : Colors.white,
                                  availableDate: doctorAvailableDate[index],
                                  availableDateTextStyle: TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: cardDoctorBookingTimeController
                                                  .selectedCardIndex.value ==
                                              index
                                          ? Colors.white
                                          : AppColors.doctorNameColor),
                                  availableSlot: doctorAvailableSlot[index],
                                  availableSlotTextStyle: TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 14,
                                      //fontWeight: FontWeight.bold,
                                      color: cardDoctorBookingTimeController
                                                  .selectedCardIndex.value ==
                                              index
                                          ? Colors.white
                                          : Colors.grey),
                                ),
                              ),
                            ),
                          );
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
