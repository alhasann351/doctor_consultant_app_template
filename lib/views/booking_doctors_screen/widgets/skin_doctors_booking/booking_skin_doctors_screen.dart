import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/booking_doctors_screen/widgets/skin_doctors_booking/back_button_title_text.dart';
import 'package:flutter/material.dart';

class BookingSkinDoctorsScreen extends StatefulWidget {
  const BookingSkinDoctorsScreen({super.key});

  @override
  State<BookingSkinDoctorsScreen> createState() =>
      _BookingSkinDoctorsScreenState();
}

class _BookingSkinDoctorsScreenState extends State<BookingSkinDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.cancerScreenTopBackgroundColor.withOpacity(0.2),
                  AppColors.cancerScreenBottomBackgroundColor.withOpacity(0.2),
                ],
              ),
            ),
          ),
          const BackButtonTitleText(),
        ],
      ),
    );
  }
}
