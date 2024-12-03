import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../home_screen/doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';

class FavoriteDoctors extends StatelessWidget {
  FavoriteDoctors({super.key});

  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1wzRKQfF33ej6WTyxwcfgD-H-k3eNIWvL',
    'https://drive.google.com/uc?export=view&id=1mWnBcNL5reXS4-8YxUUFY8WjIEMV3X3e',
    'https://drive.google.com/uc?export=view&id=1aB35zbmu3kauCqSuVzEuezFkXOhF4fgq',
    'https://drive.google.com/uc?export=view&id=1MklnbvTtazAgMYPw2G-ZfLIC0-mioRy5',
    'https://drive.google.com/uc?export=view&id=1cC0zbgDbFUcMseuz9l-_NSZFsyf5tFsp',
    'https://drive.google.com/uc?export=view&id=1jF0cpzPA06s2kF3du1w36ZhpzbDMzZKh',
    'https://drive.google.com/uc?export=view&id=1nuXdpxn7pOsq5zy3_oj0Y2BtmMGTmY3Q',
    'https://drive.google.com/uc?export=view&id=10H95JsQXrRFcrEXwJfS1qd0tdLMiDBxk',
    'https://drive.google.com/uc?export=view&id=1UDLcjPln7WHxmQ0_oTi7sk_A0bJs-cL5',
    'https://drive.google.com/uc?export=view&id=18B_sABa51xsr9ih2Frebaphvt0ie7GvL',
  ];

  final List<String> doctorName = [
    'Dr. Adrian Mercer',
    'Dr. Celeste Marlowe',
    'Dr. Elliot Voss',
    'Dr. Fiona Winslow',
    'Dr. Damian Huxley',
    'Dr. Sylvia Penrose',
    'Dr. Nolan Greaves',
    'Dr. Elara Montgomery',
    'Dr. Victor Alaric',
    'Dr. Ivy Thorne',
  ];

  final List<String> doctorSpeciality = [
    'skin_specialist'.tr,
    'heart_specialist'.tr,
    'eye_specialist'.tr,
    'ear_specialist'.tr,
    'cancer_specialist'.tr,
    'cancer_specialist'.tr,
    'ear_specialist'.tr,
    'eye_specialist'.tr,
    'heart_specialist'.tr,
    'skin_specialist'.tr,
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
    '2 years experience',
    '3 years experience',
    '4 years experience',
    '5 years experience',
    '6 years experience',
    '7 years experience',
    '4 years experience',
    '3 years experience',
    '2 years experience',
    '1 years experience',
  ];

  final List<String> doctorPercentOfGood = [
    '85% good',
    '85% good',
    '95% good',
    '85% good',
    '75% good',
    '85% good',
    '85% good',
    '85% good',
    '95% good',
    '85% good',
  ];

  final List<String> seePatients = [
    '105 patients',
    '100 patients',
    '75 patients',
    '65 patients',
    '75 patients',
    '85 patients',
    '75 patients',
    '85 patients',
    '65 patients',
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
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 80),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            cacheExtent: 1500,
            itemCount: 10,
            itemBuilder: (context, index) {
              return DoctorsInformation(
                doctorImage: image[index],
                doctorName: doctorName[index],
                doctorSpeciality: doctorSpeciality[index],
                doctorExperience: doctorExperience[index],
                doctorPercentOfGood: doctorPercentOfGood[index],
                seePatients: seePatients[index],
                nextAvailable: 'next_available'.tr,
                nextAvailableTime: nextAvailableTime[index],
                hospitalName: hospitalName[index],
                favoriteIcon: const Icon(
                  Icons.favorite,
                  size: 25,
                  color: AppColors.commonRedColor,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
