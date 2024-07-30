import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.homeTopBackgroundColor.withOpacity(0.2),
              AppColors.homeBottomBackgroundColor.withOpacity(0.2),
            ],
          ),
        ),
      ),
    );
  }
}
