import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/fonts/app_font_style.dart';

class SearchInputSpecialistDoctors extends StatelessWidget {
  SearchInputSpecialistDoctors({super.key});

  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1WIP2tlhwqlBrPZg0egCSXjlThxnDC2mQ',
    'https://drive.google.com/uc?export=view&id=10Uha5IOVfaw5k8PTPVG1-pRNiLbQnBzU',
    'https://drive.google.com/uc?export=view&id=1TpGWYK4ADG9WGY5kTFA7HypTP4mggqZ3',
    'https://drive.google.com/uc?export=view&id=1J6UFObdGZzgjx1QNq4GpkOHwsiRRSi_m',
    'https://drive.google.com/uc?export=view&id=1f54iCh1kLGBc8AhXE1jlNzMyJWVZ7t1J',
    'https://drive.google.com/uc?export=view&id=1rVHsdd4u1GOjCQbSUL5-o3ZKECokzpx2',
    'https://drive.google.com/uc?export=view&id=1CgeVOO8vKOx_b2EytCK_G6dxqdCy6opw',
    'https://drive.google.com/uc?export=view&id=1--YOc3yRVMe7x5pmGdQzJWVCOe1hasnQ',
    'https://drive.google.com/uc?export=view&id=1QemuqXbRjWl04H6LcRHafpTXABzZQHRs',
    'https://drive.google.com/uc?export=view&id=1qiPh0zepJAKlY870VvKiTRQHqLSLEmuu',
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
    'elisa'.tr,
  ];

  final List<String> hospitalName = [
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
    'hospital_name'.tr,
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
    return SizedBox(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        cacheExtent: 1500,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: doctorName.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: SizedBox(
              width: 200,
              child: Card(
                elevation: 10,
                color: AppColors.commonWhiteColor,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CachedNetworkImage(
                      fit: BoxFit.fill,
                      height: 200,
                      width: double.infinity,
                      imageUrl: image[index],
                      placeholder: (context, url) => const LoadingAnimation(),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        color: AppColors.commonGreyColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 0, left: 5, right: 5),
                      child: Text(
                        doctorName[index],
                        style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.commonBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
