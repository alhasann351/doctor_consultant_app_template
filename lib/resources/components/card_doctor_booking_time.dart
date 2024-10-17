import 'package:flutter/material.dart';

class CardDoctorBookingTime extends StatelessWidget {
  final String availableDate;
  final String availableSlot;
  final TextStyle? availableDateTextStyle;
  final TextStyle? availableSlotTextStyle;
  final Color? backgroundColor;

  const CardDoctorBookingTime({
    super.key,
    required this.availableDate,
    required this.availableSlot,
    this.availableDateTextStyle,
    this.backgroundColor,
    this.availableSlotTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            availableDate,
            style: availableDateTextStyle,
          ),
          Text(
            availableSlot,
            style: availableSlotTextStyle,
          ),
        ],
      ),
    );
  }
}
