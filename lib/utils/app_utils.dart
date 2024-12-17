import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../resources/fonts/app_font_style.dart';
import '../views_models/controllers/card_doctor_booking_time_controller.dart';
import '../views_models/controllers/date_controller.dart';

class AppUtils {
  final DateController dateController = Get.put(DateController());
  final CardDoctorBookingTimeController cardDoctorBookingTimeController =
      Get.put(CardDoctorBookingTimeController());

  static showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.commonWhiteColor,
      gravity: ToastGravity.BOTTOM,
      textColor: AppColors.commonBlackColor,
    );
  }

  void showDoctorBookingDialog(String doctorName, doctorSpeciality) {
    Get.dialog(AlertDialog(
      backgroundColor: AppColors.commonWhiteColor,
      title: Text(
        textAlign: TextAlign.center,
        'doctor_booking_successfully'.tr,
        style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: AppColors.commonBlackColor),
      ),
      content: SizedBox(
        height: 215,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              textAlign: TextAlign.center,
              'thank_you'.tr,
              style: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.commonBlackColor),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              textAlign: TextAlign.center,
              'You booked an appointment with $doctorName, $doctorSpeciality on ${DateFormat('dd MMMM yyyy').format(dateController.selectedDate.value)} at ${cardDoctorBookingTimeController.selectedTimeIndex.value}',
              style: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: AppColors.commonGreyColor),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 200,
              child: RoundedButton(
                  title: 'ok'.tr,
                  textStyle: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: AppColors.commonWhiteColor),
                  onTap: () {
                    Get.back();
                  }),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                Get.offNamed(RoutesName.myAppointmentScreen);
              },
              child: Text(
                'edit_appointment'.tr,
                style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.commonGreyColor),
              ),
            ),
          ],
        ),
      ),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      icon: const Icon(
        Icons.check_circle_rounded,
        size: 60,
        color: AppColors.commonGreenAccentColor,
      ),
    ));
  }
}
