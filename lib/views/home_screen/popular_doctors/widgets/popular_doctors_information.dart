import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/components/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/components/rounded_button.dart';
import '../../../../resources/fonts/app_font_style.dart';
import '../../../../resources/routes/routes_name.dart';
import '../../../../utils/app_utils.dart';

class PopularDoctorsInformation extends StatefulWidget {
  const PopularDoctorsInformation({super.key});

  @override
  State<PopularDoctorsInformation> createState() =>
      _PopularDoctorsInformationState();
}

class _PopularDoctorsInformationState extends State<PopularDoctorsInformation> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1bdExaQPkKjeyyfu9NhS0L6lB-rwQpT8L',
    'https://drive.google.com/uc?export=view&id=19sT1nN9dgeipqvABY66uD5sE5NjMKr60',
    'https://drive.google.com/uc?export=view&id=1nUm0SIV4FoTDsrc9us1Y_iWTDnDyyBFg',
    'https://drive.google.com/uc?export=view&id=1zrCvhB2hRdO3-YbuvuoZ7P4IpiRqy2w1',
    'https://drive.google.com/uc?export=view&id=1Rm7ymZv9cRcJ_mmggz80hiy7E01EVF09',
    'https://drive.google.com/uc?export=view&id=1mtxPO34RvdXUHt05tDNGfArXBH1vyz6w',
    'https://drive.google.com/uc?export=view&id=1zxgs7y0TlRgQxuyu0i7owYJteIgGl90p',
    'https://drive.google.com/uc?export=view&id=1P4S_9xA8bow_VUdcJ7TZE3EgHzzrgRMU',
    'https://drive.google.com/uc?export=view&id=11I6zZzSm9hhfZceM6NFQVr8wUqEaFhQh',
    'https://drive.google.com/uc?export=view&id=1ZWFVIj0H33y3HisCofqqkskKDC8l-731',
  ];

  final List<String> doctorName = [
    'Dr. Adrian Blackwell',
    'Dr. Juliette Marlowe',
    'Dr. Nicholas Fairchild',
    'Dr. Cassandra Whitmore',
    'Dr. Christopher Harlow',
    'Dr. Bianca Sterling',
    'Dr. Simon Carrington',
    'Dr. Rosalind Keller',
    'Dr. Elijah Rutherford',
    'Dr. Serena Westwood',
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
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.only(top: 80, left: 10, right: 10, bottom: 10),
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          cacheExtent: 1500,
          itemCount: 10,
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
                          padding: const EdgeInsets.only(top: 10, left: 10),
                          child: ClipRRect(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                            child: CachedNetworkImage(
                              imageUrl: image[index],
                              fit: BoxFit.fill,
                              width: 100,
                              height: 95,
                              placeholder: (context, url) =>
                                  const LoadingAnimation(),
                              errorWidget: (context, url, error) => const Icon(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(
                                  doctorName[index],
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.commonBlackColor),
                                ),
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
                            doctorSpeciality[index],
                            style: const TextStyle(
                                fontFamily: AppFontStyle.rubik,
                                fontSize: 15,
                                color: AppColors.commonLightBlueAccentColor),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
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
                                    color:
                                        AppColors.commonLightBlueAccentColor),
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
                          child: SizedBox(
                            height: 50,
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
                                Get.toNamed(RoutesName.doctorsBookingScreen,
                                    arguments: {
                                      'doctorImage': image[index],
                                      'doctorName': doctorName[index],
                                      'doctorSpeciality':
                                          doctorSpeciality[index],
                                      'hospitalName': hospitalName[index],
                                    });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ));
          },
        ),
      ),
    ));
  }
}
