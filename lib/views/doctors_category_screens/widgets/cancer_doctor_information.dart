import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/fonts/app_font_style.dart';

class CancerDoctorInformation extends StatefulWidget {
  const CancerDoctorInformation({super.key});

  @override
  State<CancerDoctorInformation> createState() =>
      _CancerDoctorInformationState();
}

class _CancerDoctorInformationState extends State<CancerDoctorInformation> {
  final List<String> image = [
    ImagesIcons.liveDoctorsImage1,
    ImagesIcons.liveDoctorsImage2,
    ImagesIcons.liveDoctorsImage3,
    ImagesIcons.liveDoctorsImage4,
    ImagesIcons.liveDoctorsImage5,
    ImagesIcons.liveDoctorsImage6,
    ImagesIcons.liveDoctorsImage7,
    ImagesIcons.liveDoctorsImage8,
    ImagesIcons.liveDoctorsImage9,
    ImagesIcons.liveDoctorsImage10,
  ];

  final List<String> doctorName = [
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
  ];

  final List<String> doctorExperience = [
    '5_years_experience'.tr,
    '7_years_experience'.tr,
    '5_years_experience'.tr,
    '7_years_experience'.tr,
    '5_years_experience'.tr,
    '7_years_experience'.tr,
    '5_years_experience'.tr,
    '7_years_experience'.tr,
    '5_years_experience'.tr,
    '7_years_experience'.tr,
  ];

  final List<String> goodDoctor = [
    '95%_good'.tr,
    '85%_good'.tr,
    '95%_good'.tr,
    '95%_good'.tr,
    '85%_good'.tr,
    '85%_good'.tr,
    '95%_good'.tr,
    '95%_good'.tr,
    '85%_good'.tr,
    '85%_good'.tr,
  ];

  final List<String> seePatients = [
    '95_patients'.tr,
    '85_patients'.tr,
    '95_patients'.tr,
    '85_patients'.tr,
    '95_patients'.tr,
    '85_patients'.tr,
    '95_patients'.tr,
    '85_patients'.tr,
    '95_patients'.tr,
    '85_patients'.tr,
  ];

  final List<String> nextAvailableTime = [
    '10:00_AM_tomorrow'.tr,
    '11:00_AM_tomorrow'.tr,
    '10:00_AM_tomorrow'.tr,
    '11:00_AM_tomorrow'.tr,
    '10:00_AM_tomorrow'.tr,
    '11:00_AM_tomorrow'.tr,
    '10:00_AM_tomorrow'.tr,
    '11:00_AM_tomorrow'.tr,
    '10:00_AM_tomorrow'.tr,
    '11:00_AM_tomorrow'.tr,
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 10, right: 10, bottom: 10),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
            //scrollDirection: Axis.vertical,
            //shrinkWrap: true,
            itemCount: image.length,
            itemBuilder: (context, index) {
              return SizedBox(
                height: 200,
                child: Card(
                  color: AppColors.doctorInfoCardBackgroundColor,
                  elevation: 8,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: ClipRRect(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          child: Image.asset(
                            image[index],
                            fit: BoxFit.fill,
                            height: 95,
                            width: 100,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 15,
                        left: 120,
                        right: 10,
                        bottom: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              doctorName[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.doctorNameColor),
                            ),
                            InkWell(
                              onTap: () {
                                AppUtils.showToastMessage(
                                    'Favorite option clicked');
                              },
                              child: const Icon(
                                Icons.favorite,
                                size: 25,
                                color: AppColors.doctorInfoFavoriteIconColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 42,
                        left: 120,
                        right: 0,
                        bottom: 0,
                        child: Text(
                          'cancer_specialist'.tr,
                          style: const TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontSize: 15,
                              color: AppColors.doctorSpecialistTextColor),
                        ),
                      ),
                      Positioned(
                        top: 65,
                        left: 120,
                        right: 0,
                        bottom: 0,
                        child: Text(
                          doctorExperience[index],
                          style: const TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontSize: 15,
                              color: AppColors.doctorNameColor),
                        ),
                      ),
                      Positioned(
                        top: 90,
                        left: 120,
                        right: 10,
                        bottom: 0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              goodDoctor[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.goodDoctorTextColor),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Text(
                              seePatients[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.seePatientsTextColor),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 10,
                        right: 0,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'next_available'.tr,
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.nextAvailableTextColor),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Text(
                              nextAvailableTime[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.nextAvailableTimeTextColor),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 130,
                        left: 220,
                        right: 10,
                        bottom: 20,
                        child: RoundedButton(
                          title: 'book_now'.tr,
                          backgroundColor: AppColors.bookNowButtonColor,
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              fontFamily: AppFontStyle.rubik,
                              color: AppColors.bookNowButtonTextColor),
                          onTap: () {
                            Get.toNamed(RoutesName.bookingCancerDoctorsScreens,
                                arguments: {
                                  'doctorsName': doctorName[index],
                                  'doctorsSpecialty': 'cancer_specialist'.tr,
                                });
                          },
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
    );
  }
}
