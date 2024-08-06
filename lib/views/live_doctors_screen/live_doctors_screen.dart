import 'package:doctor_consultant_app_template/views/live_doctors_screen/widgets/back_button_doctor_profile.dart';
import 'package:doctor_consultant_app_template/views/live_doctors_screen/widgets/comments_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LiveDoctorsScreen extends StatelessWidget {
  const LiveDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Get.arguments['image'.toString()],
              fit: BoxFit.cover,
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: BackButtonDoctorProfile(),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: CommentsInput(),
          ),
        ],
      ),
    );
  }
}
