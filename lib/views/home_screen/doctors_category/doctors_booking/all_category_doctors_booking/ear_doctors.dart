import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';
import '../../../../../resources/components/rating_icons.dart';

class EarDoctors extends StatefulWidget {
  const EarDoctors({super.key});

  @override
  State<EarDoctors> createState() => _EarDoctorsState();
}

class _EarDoctorsState extends State<EarDoctors> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1nH-s_MePHqQ3bpPi_juu1LUz2oHEPq9h',
    'https://drive.google.com/uc?export=view&id=1AAim39CKHOXSAck7ZKFYM0kJaMzftHE1',
    'https://drive.google.com/uc?export=view&id=1WnsmUhXwTpRer7FyG1vjD57zM_G_BCs-',
    'https://drive.google.com/uc?export=view&id=1Di_zc_mThhpFCpBlm61cpBeYiRyL7zMV',
    'https://drive.google.com/uc?export=view&id=1xwrRakt832JUMA-srTK1C0YsjSyj2vsv',
    'https://drive.google.com/uc?export=view&id=1pQfKESpa8SE5inmEUSbJfp3tRv29zEae',
    'https://drive.google.com/uc?export=view&id=1FcS4n3UTvK-2LWRy4zEdVtFz7U2nPTP5',
    'https://drive.google.com/uc?export=view&id=1FLPurFHa9Mjjk6dxXk3Eiy3DcynciG0e',
    'https://drive.google.com/uc?export=view&id=1baMxZluWFMwWmnd4MsjmtbH8Su70QL8W',
    'https://drive.google.com/uc?export=view&id=1ALmpsCiKa3gEnOw_p5iD_QlbHyzutLVx',
  ];

  final List<String> doctorName = [
    'Dr. Lucas Hawthorne',
    'Dr. Amelia Carrington',
    'Dr. Gabriel Rowland',
    'Dr. Sophia Whitaker',
    'Dr. Nathaniel Foster',
    'Dr. Elise Montgomery',
    'Dr. Julian Prescott',
    'Dr. Lydia Thatcher',
    'Dr. Damien Archer',
    'Dr. Hazel Penrose',
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
          BackButtonTitle(titleText: 'ear_specialist'.tr),
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
                          doctorSpeciality: 'ear_specialist'.tr,
                          doctorExperience: doctorExperience[index],
                          doctorPercentOfGood: doctorPercentOfGood[index],
                          seePatients: seePatients[index],
                          nextAvailable: 'next_available'.tr,
                          nextAvailableTime: nextAvailableTime[index],
                          hospitalName: hospitalName[index],
                          rowChild: const RatingIcons());
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
