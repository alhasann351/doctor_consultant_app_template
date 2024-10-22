import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateSelectText extends StatelessWidget {
  const DateSelectText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'date_select'.tr,
      style: const TextStyle(
          fontSize: 20,
          fontFamily: AppFontStyle.rubik,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }
}
