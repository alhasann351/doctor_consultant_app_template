import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
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
      backgroundColor: AppColors.toastMessageBackgroundColor,
      gravity: ToastGravity.BOTTOM,
      textColor: AppColors.toastMessageTextColor,
    );
  }

  showDoctorBookingDialog() {
    Get.dialog(AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        textAlign: TextAlign.center,
        'doctor_booking_successfully'.tr,
        style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.black),
      ),
      content: Column(
        children: [
          Text(
            textAlign: TextAlign.center,
            'thank_you'.tr,
            style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: Colors.black),
          ),
          Text(
            DateFormat('dd MMMM yyyy')
                .format(dateController.selectedDate.value),
            style: const TextStyle(fontSize: 24),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            cardDoctorBookingTimeController.selectedTimeIndex.value.toString(),
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      icon: const Icon(
        Icons.check_circle_rounded,
        size: 60,
        color: AppColors.cancerScreenBottomBackgroundColor,
      ),
    ));
  }
}
