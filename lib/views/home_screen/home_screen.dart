import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/widgets/doctors_category.dart';
import 'package:doctor_consultant_app_template/views/home_screen/live_doctors/widgets/live_doctors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/popular_doctors/widgets/popular_doctors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input/widgets/search_input.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/users_profile.dart';
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
          const BackgroundDesign(),
          const UsersProfile(),
          const Positioned(
            top: 115,
            right: 0,
            left: 0,
            bottom: 0,
            child: SearchInput(),
          ),
          Positioned(
            top: 160,
            right: 0,
            left: 0,
            bottom: 10,
            child: SafeArea(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  LiveDoctors(),
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
