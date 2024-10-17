import 'package:flutter/material.dart';

class CardDoctorBookingTime extends StatelessWidget {
  final String availableDate;
  final String availableSlot;
  final TextStyle? textStyle;
  final Color? backgroundColor;

  const CardDoctorBookingTime(
      {super.key,
      required this.availableDate,
      required this.availableSlot,
      this.textStyle,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Column(
        children: [
          Text(
            availableDate,
            style: textStyle,
          ),
          Text(
            availableSlot,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
