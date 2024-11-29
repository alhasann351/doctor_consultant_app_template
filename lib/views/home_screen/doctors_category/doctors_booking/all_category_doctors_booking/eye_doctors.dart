import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/doctors_category/doctors_booking/all_category_doctors_booking/widgets/doctors_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';
import '../../../../../resources/components/rating_icons.dart';

class EyeDoctors extends StatefulWidget {
  const EyeDoctors({super.key});

  @override
  State<EyeDoctors> createState() => _EyeDoctorsState();
}

class _EyeDoctorsState extends State<EyeDoctors> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=17-mssCexa3D5i1IcSIoamZ0n4URHMeHO',
    'https://drive.google.com/uc?export=view&id=1CDB2KDsj7pFds55w-6i3F59T81CX_FL2',
    'https://drive.google.com/uc?export=view&id=1WrN92X7bwrrnWkBmekiOBUxE5be4l9tv',
    'https://drive.google.com/uc?export=view&id=1boHtlPzR6Q53XCrHh8KRu0UwcbV80B_8',
    'https://drive.google.com/uc?export=view&id=1dFDm4BIxPkrRdmQykS-vSkdJVmiQPavP',
    'https://drive.google.com/uc?export=view&id=11aPXX7Kw58M_UYq-MD2t5D0Lhzp-FSle',
    'https://drive.google.com/uc?export=view&id=1PSSaH8QQlOZCucMftrH_2jl7nSFn6uA-',
    'https://drive.google.com/uc?export=view&id=18SOpOLXuBNx18bOSM85JRSNXUdoSBR_g',
    'https://drive.google.com/uc?export=view&id=1QLLbx92ZldRjTj3iWcjVfFZtSR9c4CHu',
    'https://drive.google.com/uc?export=view&id=1uylNGqjpgkTv7a587j9utVBSVwinBuhq',
  ];

  final List<String> doctorName = [
    'Dr. Oliver Grant',
    'Dr. Charlotte Grey',
    'Dr. Caleb Vaughn',
    'Dr. Isabelle Hartman',
    'Dr. Benjamin Pierce',
    'Dr. Margot Ellison',
    'Dr. Maxwell Drake',
    'Dr. Evelyn Foster',
    'Dr. Henry Alden',
    'Dr. Claudia Rivers',
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
          BackButtonTitle(titleText: 'eye_specialist'.tr),
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
                          doctorSpeciality: 'eye_specialist'.tr,
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
