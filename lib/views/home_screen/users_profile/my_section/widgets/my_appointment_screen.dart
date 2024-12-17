import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/loading_animation.dart';
import '../../../../../resources/fonts/app_font_style.dart';

class MyAppointmentScreen extends StatelessWidget {
  MyAppointmentScreen({super.key});

  final List<String> doctorsImage = [
    'https://drive.google.com/uc?export=view&id=1cIk74RjWsLC57fX4mwWGqKmFwk2AKzS2',
    'https://drive.google.com/uc?export=view&id=1AAim39CKHOXSAck7ZKFYM0kJaMzftHE1',
    'https://drive.google.com/uc?export=view&id=1WrN92X7bwrrnWkBmekiOBUxE5be4l9tv',
    'https://drive.google.com/uc?export=view&id=1AB_20pqkIyHMM3wtwYXXNsYvK2PtNos6',
    'https://drive.google.com/uc?export=view&id=1oaJ4driUyTSafpjwmFfwvaUpbcHZmN2I',
    'https://drive.google.com/uc?export=view&id=14Cwe2WRBlRpHN_IaZI7Cj68000cYu3fK',
    'https://drive.google.com/uc?export=view&id=1WnsmUhXwTpRer7FyG1vjD57zM_G_BCs-',
    'https://drive.google.com/uc?export=view&id=1boHtlPzR6Q53XCrHh8KRu0UwcbV80B_8',
    'https://drive.google.com/uc?export=view&id=1a4hCnkNOZVncLydL24HAQ1gmCu-oD9L6',
    'https://drive.google.com/uc?export=view&id=11kC46mNeRjjn3ESoDTmU1D5kUSCOnA7F',
  ];
  final List<String> doctorsName = [
    'Dr. Ethan Caldwell',
    'Dr. Amelia Carrington',
    'Dr. Caleb Vaughn',
    'Dr. Diana Holloway',
    'Dr. Owen Prescott',
    'Dr. Naomi Sinclair',
    'Dr. Gabriel Rowland',
    'Dr. Isabelle Hartman',
    'Dr. Patrick Lennox',
    'Dr. Victoria Lane',
  ];
  final List<String> doctorsSpeciality = [
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
  final List<String> appointmentDate = [
    'Date: 01:00 PM today',
    'Date: 02:00 PM tomorrow',
    'Date: 03:00 PM today',
    'Date: 04:00 PM tomorrow',
    'Date: 05:00 PM today',
    'Date: 06:00 PM tomorrow',
    'Date: 07:00 PM today',
    'Date: 08:00 PM tomorrow',
    'Date: 09:00 PM today',
    'Date: 10:00 PM tomorrow',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'my_appointment'.tr),
          Positioned(
            top: 70,
            left: 10,
            right: 10,
            bottom: 10,
            child: SafeArea(
              child: ListView.builder(
                cacheExtent: 1500,
                itemCount: doctorsName.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 180,
                    child: Card(
                      color: AppColors.commonWhiteColor,
                      elevation: 5,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 10, bottom: 10),
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                height: 95,
                                width: 100,
                                imageUrl: doctorsImage[index],
                                placeholder: (context, url) =>
                                    const LoadingAnimation(),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                  color: AppColors.commonGreyColor,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 120,
                            right: 10,
                            bottom: 0,
                            child: Text(
                              doctorsName[index],
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.commonBlackColor),
                            ),
                          ),
                          Positioned(
                            top: 38,
                            left: 120,
                            right: 0,
                            bottom: 0,
                            child: Text(
                              doctorsSpeciality[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.commonLightBlueAccentColor),
                            ),
                          ),
                          Positioned(
                            top: 63,
                            left: 120,
                            right: 0,
                            bottom: 0,
                            child: Text(
                              hospitalName[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.commonBlackColor),
                            ),
                          ),
                          Positioned(
                            top: 88,
                            left: 120,
                            right: 10,
                            bottom: 0,
                            child: Text(
                              appointmentDate[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.commonGreenColor),
                            ),
                          ),
                          Positioned(
                            top: 120,
                            left: 10,
                            right: 10,
                            bottom: 0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Get.toNamed(RoutesName.addReview,
                                        arguments: {
                                          'doctorImage': doctorsImage[index],
                                          'doctorName': doctorsName[index],
                                          'doctorSpeciality':
                                              doctorsSpeciality[index],
                                          'hospitalName': hospitalName[index],
                                        });
                                  },
                                  child: Text(
                                    'add_review'.tr,
                                    style: const TextStyle(
                                        fontFamily: AppFontStyle.rubik,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: AppColors.commonBlackColor),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    AppUtils.showToastMessage(
                                        'Appointment cancel...');
                                  },
                                  child: Text(
                                    'appointment_cancel'.tr,
                                    style: const TextStyle(
                                        fontFamily: AppFontStyle.rubik,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: AppColors.commonBlackColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
