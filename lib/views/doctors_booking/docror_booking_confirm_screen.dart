import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/date_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DocrorBookingConfirmScreen extends StatefulWidget {
  const DocrorBookingConfirmScreen({super.key});

  @override
  State<DocrorBookingConfirmScreen> createState() =>
      _DocrorBookingConfirmScreenState();
}

class _DocrorBookingConfirmScreenState
    extends State<DocrorBookingConfirmScreen> {
  final DateController dateController = Get.put(DateController());

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
        ],
      ),
    );
  }
}
