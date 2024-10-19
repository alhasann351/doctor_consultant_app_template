import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/CardDoctorBookingTimeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';

class AvailableTimes extends StatelessWidget {
  AvailableTimes({super.key});

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
    return GridView.builder(
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
              cardDoctorBookingTimeController.selectedTimeIndex(index);
            },
            child: Obx(
              () => Card(
                color:
                    cardDoctorBookingTimeController.selectedTimeIndex.value ==
                            index
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
                              index
                          ? Colors.white
                          : AppColors.doctorNameColor),
                )),
              ),
            ),
          );
        });
  }
}
