import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/widgets/doctor_booking_confirm_back_button.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/card_doctor_booking_time_controller.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/date_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DoctorBookingConfirmScreen extends StatefulWidget {
  const DoctorBookingConfirmScreen({super.key});

  @override
  State<DoctorBookingConfirmScreen> createState() =>
      _DoctorBookingConfirmScreenState();
}

class _DoctorBookingConfirmScreenState
    extends State<DoctorBookingConfirmScreen> {
  final DateController dateController = Get.put(DateController());
  final CardDoctorBookingTimeController cardDoctorBookingTimeController =
      Get.put(CardDoctorBookingTimeController());

  @override
  Widget build(BuildContext context) {
    final formattedDate =
        DateFormat('dd MMMM yyyy').format(dateController.selectedDate.value);

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
                  AppColors.cancerScreenBottomBackgroundColor.withOpacity(0.2),
                  AppColors.cancerScreenTopBackgroundColor.withOpacity(0.2),
                ],
              ),
            ),
          ),
          const DoctorBookingConfirmBackButton(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  formattedDate,
                  style: const TextStyle(fontSize: 24),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  cardDoctorBookingTimeController.selectedTimeIndex.value
                      .toString(),
                  style: const TextStyle(fontSize: 24),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
