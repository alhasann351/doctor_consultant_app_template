import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../fonts/app_font_style.dart';

class TimeSelectText extends StatelessWidget {
  const TimeSelectText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'time_select'.tr,
      style: const TextStyle(
          fontSize: 18,
          fontFamily: AppFontStyle.rubik,
          fontWeight: FontWeight.bold,
          color: Colors.black),
    );
  }
}
