import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input_screen/widgets/search_input_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/users_profile.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/doctors_category.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/live_doctors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/widgets/popular_doctors.dart';
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
          const UsersProfile(),
          const Positioned(
            top: 115,
            right: 0,
            left: 0,
            bottom: 0,
            child: SearchInputDesign(),
          ),
          Positioned(
            top: 160,
            right: 0,
            left: 0,
            bottom: 0,
            child: SafeArea(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  const LiveDoctors(),
                  DoctorsCategory(),
                  PopularDoctors(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
