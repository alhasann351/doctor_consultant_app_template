import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/doctors_category.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/live_doctors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/search_input.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/user_profile.dart';
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
                  AppColors.homeTopBackgroundColor.withOpacity(0.2),
                  AppColors.homeBottomBackgroundColor.withOpacity(0.2),
                ],
              ),
            ),
          ),
          Container(
            height: 186,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.homeRectangleTopLeftBackgroundColor
                      .withOpacity(0.7),
                  AppColors.homeRectangleBottomRightBackgroundColor
                      .withOpacity(0.7),
                ],
              ),
            ),
            child: const UserProfile(),
          ),
          const Positioned(
            top: 155,
            right: 0,
            left: 0,
            bottom: 0,
            child: SearchInput(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                LiveDoctors(),
                const DoctorsCategory(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
