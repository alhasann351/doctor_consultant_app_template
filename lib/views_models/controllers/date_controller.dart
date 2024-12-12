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
