import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';

class CancerDoctors extends StatefulWidget {
  const CancerDoctors({super.key});

  @override
  State<CancerDoctors> createState() => _CancerDoctorsState();
}

class _CancerDoctorsState extends State<CancerDoctors> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1cIk74RjWsLC57fX4mwWGqKmFwk2AKzS2',
    'https://drive.google.com/uc?export=view&id=14Cwe2WRBlRpHN_IaZI7Cj68000cYu3fK',
    'https://drive.google.com/uc?export=view&id=1vpleHNzLlqIYxP1qnij_JechPHpW7_-T',
    'https://drive.google.com/uc?export=view&id=1ZQWZCRUE_LK0yR6qqtBtUEyVqavCPlvF',
    'https://drive.google.com/uc?export=view&id=1NO0uqzGZxR2KWV2TD69JZh90R7GsK1oY',
    'https://drive.google.com/uc?export=view&id=1MOQBZlf7am-5k0OvoVMY_9tyKnHqotSV',
    'https://drive.google.com/uc?export=view&id=1tRUxJmBjRkh2giq7KWPWQo9ACxmTloan',
    'https://drive.google.com/uc?export=view&id=1EExoqK-3a5bRGizfp9GjB_1oqMahrRWj',
    'https://drive.google.com/uc?export=view&id=1vmouia40MbLiasRb1iD9d7-6AXxjJRTF',
    'https://drive.google.com/uc?export=view&id=16f8RVv7vJc3EkHcWhXLMauPWYpgXkpLK',
  ];

  final List<String> doctorName = [
    'Dr. Ethan Caldwell',
    'Dr. Naomi Sinclair',
    'Dr. Marcus Winslow',
    'Dr. Vivian Harper',
    'Dr. Adrian Shepherd',
    'Dr. Lila Monroe',
    'Dr. Victor Hale',
    'Dr. Celeste Manning',
    'Dr. Samuel Crowther',
    'Dr. Fiona Bellamy',
  ];

  final List<String> hospitalName = [
    'Lifeline Haven Medical',
    'Serenity Springs Health',
    'Beacon Crest Medical',
    'Evergreen Care Pavilion',
    'Horizon Wellness Hospital',
    'Harmony Ridge Health Center',
    'VitalPath Regional Medical',
    'Silver Oak Healing Center',
    'Tranquil Meadows Medical',
    'Summit Grove Healthcare',
  ];

  final List<String> doctorExperience = [
    '5 years experience',
    '6 years experience',
    '7 years experience',
    '8 years experience',
    '5 years experience',
    '6 years experience',
    '4 years experience',
    '3 years experience',
    '7 years experience',
    '8 years experience',
  ];

  final List<String> doctorPercentOfGood = [
    '95% good',
    '85% good',
    '75% good',
    '85% good',
    '75% good',
    '85% good',
    '95% good',
    '85% good',
    '75% good',
    '85% good',
  ];

  final List<String> seePatients = [
    '95 patients',
    '85 patients',
    '75 patients',
    '65 patients',
    '55 patients',
    '45 patients',
    '75 patients',
    '85 patients',
    '95 patients',
    '55 patients',
  ];

  final List<String> nextAvailableTime = [
    '01:00 PM tomorrow',
    '02:00 PM tomorrow',
    '03:00 PM tomorrow',
    '04:00 PM tomorrow',
    '05:00 PM tomorrow',
    '06:00 PM tomorrow',
    '07:00 PM tomorrow',
    '08:00 PM tomorrow',
    '09:00 PM tomorrow',
    '10:00 PM tomorrow',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'cancer_specialist'.tr),
          Positioned(
            top: 70,
            bottom: 0,
            right: 0,
            left: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    cacheExtent: 1500,
                    itemCount: image.length,
                    itemBuilder: (context, index) {
                      return DoctorsInformation(
                        doctorImage: image[index],
                        doctorName: doctorName[index],
                        doctorSpeciality: 'cancer_specialist'.tr,
                        doctorExperience: doctorExperience[index],
                        doctorPercentOfGood: doctorPercentOfGood[index],
                        seePatients: seePatients[index],
                        nextAvailable: 'next_available'.tr,
                        nextAvailableTime: nextAvailableTime[index],
                        hospitalName: hospitalName[index],
                        favoriteIcon: const Icon(
                          Icons.favorite,
                          size: 25,
                          color: AppColors.commonGreyColor,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
