import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../../../views_models/controllers/date_controller.dart';

class ShowCalendar extends StatefulWidget {
  const ShowCalendar({super.key});

  @override
  State<ShowCalendar> createState() => _ShowCalendarState();
}

class _ShowCalendarState extends State<ShowCalendar> {
  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'date_select'.tr,
            style: const TextStyle(
                fontSize: 20,
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                color: AppColors.commonBlackColor),
          ),
        ),
        Card(
          color: AppColors.commonWhiteColor,
          child: Obx(
            () => TableCalendar(
              focusedDay: dateController.selectedDate.value,
              firstDay: DateTime.now(),
              lastDay: DateTime.utc(2030, 12, 31),
              selectedDayPredicate: (day) =>
                  isSameDay(dateController.selectedDate.value, day),
              onDaySelected: (selectedDay, focusedDay) {
                dateController.updateSelectedDate(selectedDay);
              },
              headerStyle: const HeaderStyle(
                titleTextStyle: TextStyle(
                  color: AppColors.commonBlackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFontStyle.rubik,
                ),
                formatButtonVisible: false,
                leftChevronIcon:
                    Icon(Icons.chevron_left, color: AppColors.commonBlackColor),
                rightChevronIcon: Icon(Icons.chevron_right,
                    color: AppColors.commonBlackColor),
              ),
              daysOfWeekStyle: const DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    color: AppColors.commonBlackColor,
                    fontFamily: AppFontStyle.rubik),
                weekendStyle: TextStyle(
                    color: AppColors.commonBlackColor,
                    fontFamily: AppFontStyle.rubik),
              ),
              calendarStyle: CalendarStyle(
                weekendTextStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  color: AppColors.commonBlackColor,
                  fontSize: 15,
                ),
                disabledTextStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  color: AppColors.commonGreyColor,
                  fontSize: 15,
                ),
                todayTextStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  color: AppColors.commonBlackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                todayDecoration: BoxDecoration(
                  color: AppColors.commonGreenColor.withOpacity(0.3),
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  color: AppColors.commonBlackColor,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                selectedDecoration: const BoxDecoration(
                  color: AppColors.commonGreenColor,
                  shape: BoxShape.circle,
                ),
                defaultTextStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  color: AppColors.commonBlackColor,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
