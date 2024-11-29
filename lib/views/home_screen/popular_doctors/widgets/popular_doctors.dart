import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/components/loading_animation.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/components/rating_icons.dart';
import '../../../../resources/fonts/app_font_style.dart';

class PopularDoctors extends StatelessWidget {
  PopularDoctors({super.key});

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

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 0),
              child: Text(
                'popular_doctors_title_text'.tr,
                style: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.commonBlackColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, top: 0),
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesName.popularDoctorsScreen);
                },
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
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 260,
            width: double.infinity,
            child: ListView.builder(
              cacheExtent: 1500,
              scrollDirection: Axis.horizontal,
              itemCount: image.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: SizedBox(
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(RoutesName.doctorsBookingScreen,
                              arguments: {
                                'doctorImage': image[index],
                                'doctorName': doctorName[index],
                                'doctorSpeciality': doctorSpeciality[index],
                                'hospitalName': hospitalName[index],
                              });
                        },
                        child: Card(
                          elevation: 10,
                          color: Colors.white,
                          clipBehavior: Clip.antiAlias,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CachedNetworkImage(
                                height: 150,
                                width: double.infinity,
                                imageUrl: image[index],
                                fit: BoxFit.fill,
                                placeholder: (context, url) =>
                                    const LoadingAnimation(),
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                  color: Colors.grey,
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10, bottom: 0, left: 5, right: 5),
                                  child: Text(
                                    doctorName[index],
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 0, bottom: 0, left: 5, right: 5),
                                child: Text(
                                  doctorSpeciality[index],
                                  style: const TextStyle(
                                    fontFamily: AppFontStyle.rubik,
                                    fontSize: 13,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                    top: 0, bottom: 0, left: 5, right: 5),
                                child: RatingIcons(),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
