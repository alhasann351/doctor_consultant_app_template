import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/components/loading_animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class PopularDoctors extends StatelessWidget {
  PopularDoctors({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text(
                'popular_doctors_title_text'.tr,
                style: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.doctorsCategoryTitleTextColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 10),
              child: Text(
                'see_all_text'.tr,
                style: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 284,
          width: double.infinity,
          child: ListView.builder(
            cacheExtent: 1500,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: image.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: SizedBox(
                  width: 200,
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CachedNetworkImage(
                          height: 200,
                          width: double.infinity,
                          imageUrl: image[index],
                          fit: BoxFit.fill,
                          placeholder: (context, url) =>
                              const LoadingAnimation(),
                          errorWidget: (context, url, error) => const Icon(
                            Icons.error,
                            color: Colors.grey,
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
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Text(
                          doctorSpeciality[index],
                          style: const TextStyle(
                            fontFamily: AppFontStyle.rubik,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
