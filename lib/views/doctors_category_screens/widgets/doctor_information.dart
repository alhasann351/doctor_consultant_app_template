import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorInformation extends StatelessWidget {
  DoctorInformation({super.key});

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
                height: 180,
                child: Card(
                  color: AppColors.doctorInfoCardBackgroundColor,
                  elevation: 8,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              doctorName[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.doctorNameColor),
                            ),
                            Text(
                              'cancer_specialist'.tr,
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.doctorSpecialistTextColor),
                            ),
                            Text(
                              doctorExperience[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 15,
                                  color: AppColors.doctorNameColor),
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
    );
  }
}
