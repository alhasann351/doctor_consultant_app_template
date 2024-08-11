import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class EyeDoctorsScreen extends StatelessWidget {
  const EyeDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(child: Text('Eye Doctors Screen')),
    );
  }
}
