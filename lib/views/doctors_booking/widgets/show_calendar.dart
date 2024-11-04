import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../resources/colors/app_colors.dart';

class ShowCalendar extends StatefulWidget {
  const ShowCalendar({super.key});

  @override
  State<ShowCalendar> createState() => _ShowCalendarState();
}

class _ShowCalendarState extends State<ShowCalendar> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: TableCalendar(
        focusedDay: DateTime.now(),
        firstDay: DateTime.now(),
        lastDay: DateTime.utc(2030, 12, 31),
        headerStyle: const HeaderStyle(
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontFamily: AppFontStyle.rubik,
          ),
          formatButtonVisible: false,
          leftChevronIcon: Icon(Icons.chevron_left, color: Colors.black),
          rightChevronIcon: Icon(Icons.chevron_right, color: Colors.black),
        ),
        daysOfWeekStyle: const DaysOfWeekStyle(
          weekdayStyle:
              TextStyle(color: Colors.black, fontFamily: AppFontStyle.rubik),
          weekendStyle:
              TextStyle(color: Colors.black, fontFamily: AppFontStyle.rubik),
        ),
        calendarStyle: const CalendarStyle(
          weekendTextStyle: TextStyle(
            fontFamily: AppFontStyle.rubik,
            color: Colors.black,
            fontSize: 15,
          ),
          disabledTextStyle: TextStyle(
            fontFamily: AppFontStyle.rubik,
            color: Colors.grey,
            fontSize: 15,
          ),
          todayTextStyle: TextStyle(
            fontFamily: AppFontStyle.rubik,
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          todayDecoration: BoxDecoration(
            color: AppColors.defaultButtonBackgroundColor,
            shape: BoxShape.circle,
          ),
          selectedTextStyle: TextStyle(
            fontFamily: AppFontStyle.rubik,
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
          selectedDecoration: BoxDecoration(
            color: AppColors.defaultButtonBackgroundColor,
            shape: BoxShape.circle,
          ),
          defaultTextStyle: TextStyle(
            fontFamily: AppFontStyle.rubik,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
