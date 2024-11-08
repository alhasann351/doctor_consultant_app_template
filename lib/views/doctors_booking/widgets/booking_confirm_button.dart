import 'package:doctor_consultant_app_template/views_models/controllers/card_doctor_booking_time_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/components/rounded_button.dart';
import '../../../resources/fonts/app_font_style.dart';

class BookingConfirmButton extends StatelessWidget {
  BookingConfirmButton({super.key});

  final CardDoctorBookingTimeController cardDoctorBookingTimeController =
      Get.put(CardDoctorBookingTimeController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context).size.width,
      child: RoundedButton(
        title: 'confirm'.tr,
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
    );
  }
}
