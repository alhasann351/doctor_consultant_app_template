import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';

class HeartDoctors extends StatefulWidget {
  const HeartDoctors({super.key});

  @override
  State<HeartDoctors> createState() => _HeartDoctorsState();
}

class _HeartDoctorsState extends State<HeartDoctors> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1v_84NrfA21XpCXVUvVVcl9jMdkZ3NgDG',
    'https://drive.google.com/uc?export=view&id=1Xa52UTZiZZ8lI4rSSr4tNCwAOWs-ophz',
    'https://drive.google.com/uc?export=view&id=1FecpBpsDfBQA7ys8PY77HGuZcp3eBAmd',
    'https://drive.google.com/uc?export=view&id=1AB_20pqkIyHMM3wtwYXXNsYvK2PtNos6',
    'https://drive.google.com/uc?export=view&id=1a4hCnkNOZVncLydL24HAQ1gmCu-oD9L6',
    'https://drive.google.com/uc?export=view&id=1mNaa8Cp1BLd2G3QTDb6Emwk-yAhz_oAL',
    'https://drive.google.com/uc?export=view&id=15oC6ZpvTACOLTS9lXyJkcSbA4s_XbNFM',
    'https://drive.google.com/uc?export=view&id=1aQGPoapzLxWPBxdnc68xEqPqD2QvaFaD',
    'https://drive.google.com/uc?export=view&id=178NiahI3-ZWQFK3gA1kQ_Eu4pXkK4swm',
    'https://drive.google.com/uc?export=view&id=1IZbsP9pKcUmh-k3pMoRUB-DfCE6mVOF0',
  ];

  final List<String> doctorName = [
    'Dr. Alexander Rhodes',
    'Dr. Natalie Chambers',
    'Dr. Jonathan Hayes',
    'Dr. Diana Holloway',
    'Dr. Patrick Lennox',
    'Dr. Sabrina Cross',
    'Dr. Zachary Miles',
    'Dr. Helena Bradford',
    'Dr. Victor Langston',
    'Dr. Fiona Waverly',
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
          BackButtonTitle(titleText: 'heart_specialist'.tr),
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
                        doctorSpeciality: 'heart_specialist'.tr,
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
