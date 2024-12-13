import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DateController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var selectDateOfBirth = ''.obs;

  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
  }

  Future<void> pickDate(BuildContext context) async {
    DateTime? pickDateOfBirth = await showDatePicker(
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            colorScheme:
                const ColorScheme.light(primary: AppColors.commonGreenColor),
            dialogBackgroundColor: AppColors.commonWhiteColor,
          ),
          child: child ?? const Text(""),
        );
      },
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1980),
      lastDate: DateTime.now(),
    );
    if (pickDateOfBirth != null) {
      selectDateOfBirth.value =
          "${pickDateOfBirth.year}-${pickDateOfBirth.month.toString().padLeft(2, '0')}-${pickDateOfBirth.day.toString().padLeft(2, '0')}";
    }
  }
}
