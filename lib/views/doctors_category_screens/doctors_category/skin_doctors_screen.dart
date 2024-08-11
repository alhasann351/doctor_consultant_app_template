import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class SkinDoctorsScreen extends StatelessWidget {
  const SkinDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Center(child: Text('Skin Doctors Screen')),
    );
  }
}
