import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';
import '../../../../../resources/components/loading_animation.dart';
import '../../../../../resources/components/rounded_button.dart';
import '../../../../../resources/fonts/app_font_style.dart';
import '../../../../../resources/routes/routes_name.dart';
import '../../../../../utils/app_utils.dart';

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

  final List<String> goodDoctor = [
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
                      return SizedBox(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Card(
                            color: AppColors.commonWhiteColor,
                            elevation: 8,
                            child: Stack(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 10),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(10)),
                                    child: CachedNetworkImage(
                                      fit: BoxFit.fill,
                                      height: 95,
                                      width: 100,
                                      imageUrl: image[index],
                                      placeholder: (context, url) =>
                                          const LoadingAnimation(),
                                      errorWidget: (context, url, error) =>
                                          const Icon(
                                        Icons.error,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 15,
                                  left: 120,
                                  right: 10,
                                  bottom: 0,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        doctorName[index],
                                        style: const TextStyle(
                                            fontFamily: AppFontStyle.rubik,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.commonBlackColor),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          AppUtils.showToastMessage(
                                              'favorite_option_clicked'.tr);
                                        },
                                        child: const Icon(
                                          Icons.favorite,
                                          size: 25,
                                          color: AppColors.commonGreyColor,
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
                                    'heart_specialist'.tr,
                                    style: const TextStyle(
                                        fontFamily: AppFontStyle.rubik,
                                        fontSize: 15,
                                        color: AppColors
                                            .commonLightBlueAccentColor),
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
                                        color: AppColors.commonBlackColor),
                                  ),
                                ),
                                Positioned(
                                  top: 90,
                                  left: 120,
                                  right: 10,
                                  bottom: 0,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        goodDoctor[index],
                                        style: const TextStyle(
                                            fontFamily: AppFontStyle.rubik,
                                            fontSize: 15,
                                            color: AppColors.commonGreenColor),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(
                                        seePatients[index],
                                        style: const TextStyle(
                                            fontFamily: AppFontStyle.rubik,
                                            fontSize: 15,
                                            color:
                                                AppColors.seePatientsTextColor),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'next_available'.tr,
                                        style: const TextStyle(
                                            fontFamily: AppFontStyle.rubik,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors
                                                .commonLightBlueAccentColor),
                                      ),
                                      const SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        nextAvailableTime[index],
                                        style: const TextStyle(
                                            fontFamily: AppFontStyle.rubik,
                                            fontSize: 15,
                                            color: AppColors.commonGreyColor),
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
                                    backgroundColor:
                                        AppColors.commonLightBlueAccentColor,
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        fontFamily: AppFontStyle.rubik,
                                        color: AppColors.commonWhiteColor),
                                    onTap: () {
                                      Get.toNamed(
                                        RoutesName.doctorsBookingScreen,
                                        arguments: {
                                          'doctorImage': image[index],
                                          'doctorName': doctorName[index],
                                          'doctorSpeciality':
                                              'heart_specialist'.tr,
                                          'hospitalName': hospitalName[index],
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
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
