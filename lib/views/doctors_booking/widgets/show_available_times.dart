import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/card_doctor_booking_time_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';

class ShowAvailableTimes extends StatelessWidget {
  ShowAvailableTimes({super.key});

  final List<String> times = [
    '1:00 PM',
    '1:30 PM',
    '2:00 PM',
    '2:30 PM',
    '3:00 PM',
    '3:30 PM',
    '4:00 PM',
    '4:30 PM',
    '5:30 PM',
    '7:00 PM',
    '7:30 PM',
    '8:00 PM',
    '8:30 PM',
    '9:00 PM',
    '9:30 PM',
  ];

  final CardDoctorBookingTimeController cardDoctorBookingTimeController =
      Get.put(CardDoctorBookingTimeController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'time_select'.tr,
            style: const TextStyle(
                fontSize: 18,
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              //childAspectRatio: 2,
              mainAxisExtent: 65,
              mainAxisSpacing: 10,
              crossAxisSpacing: 5,
            ),
            itemCount: times.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  cardDoctorBookingTimeController
                      .selectedTimeIndex(times[index]);
                },
                child: Obx(
                  () => Card(
                    color: cardDoctorBookingTimeController
                                .selectedTimeIndex.value ==
                            times[index]
                        ? AppColors.cardSelectedColor
                        : Colors.white,
                    child: Center(
                        child: Text(
                      times[index],
                      style: TextStyle(
                          fontSize: 14,
                          fontFamily: AppFontStyle.rubik,
                          color: cardDoctorBookingTimeController
                                      .selectedTimeIndex.value ==
                                  times[index]
                              ? Colors.white
                              : AppColors.doctorNameColor),
                    )),
                  ),
                ),
              );
            }),
      ],
    );
  }
}
