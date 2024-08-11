import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HeartDoctorsScreen extends StatelessWidget {
  const HeartDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(child: Text('Heart Doctors Screen')),
    );
  }
}
