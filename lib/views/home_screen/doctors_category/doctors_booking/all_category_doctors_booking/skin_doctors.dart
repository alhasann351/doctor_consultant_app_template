import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';

class SkinDoctors extends StatefulWidget {
  const SkinDoctors({super.key});

  @override
  State<SkinDoctors> createState() => _SkinDoctorsState();
}

class _SkinDoctorsState extends State<SkinDoctors> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1pm0yPU4DElOoiLpCElUVg1Ml5aWilqQQ',
    'https://drive.google.com/uc?export=view&id=1Lb0gHD85eGtbq-WawGuwLAGb8ZesW30Y',
    'https://drive.google.com/uc?export=view&id=1Q0xb8c5ubLRKfC5Inelk_bi68odOPraz',
    'https://drive.google.com/uc?export=view&id=1YkymiztcMl2DakCHrhB30MzyuwA2wqa5',
    'https://drive.google.com/uc?export=view&id=1oaJ4driUyTSafpjwmFfwvaUpbcHZmN2I',
    'https://drive.google.com/uc?export=view&id=11kC46mNeRjjn3ESoDTmU1D5kUSCOnA7F',
    'https://drive.google.com/uc?export=view&id=1znrEk43jNPin0wqg3Nmh04ofyp6SKWnR',
    'https://drive.google.com/uc?export=view&id=1QzTS-w8T98LN3jQeMG1LNV-7JWyg4Des',
    'https://drive.google.com/uc?export=view&id=1Dm8cldhVFLFkGQS_JhmFPXgUOo5Yg6uU',
    'https://drive.google.com/uc?export=view&id=1DHdu2k2Xa1k2XeEGXaJ0ZCu30LW4TY8T',
  ];

  final List<String> doctorName = [
    'Dr. Sebastian Cole',
    'Dr. Clarissa Morgan',
    'Dr. Daniel Hartfield',
    'Dr. Penelope Ashton',
    'Dr. Owen Prescott',
    'Dr. Victoria Lane',
    'Dr. Isaac Bennett',
    'Dr. Genevieve Clarke',
    'Dr. Theodore Vaughn',
    'Dr. Amelia Townsend',
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
          BackButtonTitle(titleText: 'skin_specialist'.tr),
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
                        doctorSpeciality: 'skin_specialist'.tr,
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
