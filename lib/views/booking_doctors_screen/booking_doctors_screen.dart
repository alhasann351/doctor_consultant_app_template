import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class BookingDoctorsScreen extends StatefulWidget {
  const BookingDoctorsScreen({super.key});

  @override
  State<BookingDoctorsScreen> createState() => _BookingDoctorsScreenState();
}

class _BookingDoctorsScreenState extends State<BookingDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: Center(
          child: Text('Booking Doctors Screen'),
        ));
  }
}
