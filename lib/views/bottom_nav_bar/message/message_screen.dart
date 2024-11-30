import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Center(
        child: Text('Message'),
      ),
    );
  }
}
