import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/components/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';
import '../../../utils/app_utils.dart';

class PopularDoctorsInformation extends StatefulWidget {
  const PopularDoctorsInformation({super.key});

  @override
  State<PopularDoctorsInformation> createState() =>
      _PopularDoctorsInformationState();
}

class _PopularDoctorsInformationState extends State<PopularDoctorsInformation> {
  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1qiPh0zepJAKlY870VvKiTRQHqLSLEmuu',
    'https://drive.google.com/uc?export=view&id=1QemuqXbRjWl04H6LcRHafpTXABzZQHRs',
    'https://drive.google.com/uc?export=view&id=1--YOc3yRVMe7x5pmGdQzJWVCOe1hasnQ',
    'https://drive.google.com/uc?export=view&id=1CgeVOO8vKOx_b2EytCK_G6dxqdCy6opw',
    'https://drive.google.com/uc?export=view&id=1rVHsdd4u1GOjCQbSUL5-o3ZKECokzpx2',
    'https://drive.google.com/uc?export=view&id=1f54iCh1kLGBc8AhXE1jlNzMyJWVZ7t1J',
    'https://drive.google.com/uc?export=view&id=1J6UFObdGZzgjx1QNq4GpkOHwsiRRSi_m',
    'https://drive.google.com/uc?export=view&id=1TpGWYK4ADG9WGY5kTFA7HypTP4mggqZ3',
    'https://drive.google.com/uc?export=view&id=10Uha5IOVfaw5k8PTPVG1-pRNiLbQnBzU',
    'https://drive.google.com/uc?export=view&id=1WIP2tlhwqlBrPZg0egCSXjlThxnDC2mQ',
  ];

  final List<String> doctorName = [
    'elisa'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
    'hasan'.tr,
    'elisa'.tr,
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
                    color: AppColors.doctorInfoCardBackgroundColor,
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
                            doctorSpeciality[index],
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
                            ],
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
