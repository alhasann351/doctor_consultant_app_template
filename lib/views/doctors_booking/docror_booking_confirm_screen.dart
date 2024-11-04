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
      body: Center(child: Text(formattedDate)),
    );
  }
}
