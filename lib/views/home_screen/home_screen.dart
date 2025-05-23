import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/widgets/doctors_category.dart';
import 'package:doctor_consultant_app_template/views/home_screen/live_doctors/widgets/live_doctors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/popular_doctors/widgets/popular_doctors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input/widgets/search_input.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/user_details_section/widgets/users_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../views_models/controllers/switch_languages_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final SwitchLanguagesController switchLanguagesController =
    Get.put(SwitchLanguagesController());

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundDesign(),
          const UsersProfile(),
          const Positioned(
            top: 80,
            right: 0,
            left: 0,
            bottom: 0,
            child: SearchInput(),
          ),
          Positioned(
            top: 160,
            right: 0,
            left: 0,
            bottom: 50,
            child: SafeArea(
              child: ListView(
                scrollDirection: Axis.vertical,
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
