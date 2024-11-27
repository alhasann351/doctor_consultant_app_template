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
                                        color: AppColors.commonGreyColor,
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
                                    'eye_specialist'.tr,
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
                                                'eye_specialist'.tr,
                                            'hospitalName': hospitalName[index],
                                          });
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
