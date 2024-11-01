import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../resources/fonts/app_font_style.dart';

class AppUtils {
  static showToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: AppColors.toastMessageBackgroundColor,
      gravity: ToastGravity.BOTTOM,
      textColor: AppColors.toastMessageTextColor,
    );
  }

  static showDoctorBookingDialog() {
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
      content: Text(
        textAlign: TextAlign.center,
        'thank_you'.tr,
        style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.black),
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
