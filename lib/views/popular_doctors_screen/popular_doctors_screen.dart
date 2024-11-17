import 'package:doctor_consultant_app_template/views/popular_doctors_screen/widgets/back_button_Popular_doctors_title.dart';
import 'package:doctor_consultant_app_template/views/popular_doctors_screen/widgets/popular_doctors_information.dart';
import 'package:flutter/material.dart';

import '../../resources/colors/app_colors.dart';

class PopularDoctorsScreen extends StatefulWidget {
  const PopularDoctorsScreen({super.key});

  @override
  State<PopularDoctorsScreen> createState() => _PopularDoctorsScreenState();
}

class _PopularDoctorsScreenState extends State<PopularDoctorsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  AppColors.homeBottomBackgroundColor.withOpacity(0.2),
                  AppColors.homeTopBackgroundColor.withOpacity(0.2),
                ],
              ),
            ),
          ),
          const BackButtonPopularDoctorsTitle(),
          const PopularDoctorsInformation(),
        ],
      ),
    );
  }
}
