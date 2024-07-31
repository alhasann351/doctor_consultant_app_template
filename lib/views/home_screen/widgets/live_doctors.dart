import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/assets/images_icons.dart';

class LiveDoctors extends StatelessWidget {
  LiveDoctors({super.key});

  final List<String> imagePaths = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            'live_doctors_title_text'.tr,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.liveDoctorsTitleTextColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            height: 220,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: SizedBox(
                        height: 200,
                        width: 150,
                        child: Card(
                          elevation: 10,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          child: ColorFiltered(
                            colorFilter: const ColorFilter.mode(
                                AppColors.liveDoctorsImageDarkenColor,
                                BlendMode.darken),
                            child: Image.asset(
                              imagePaths[index],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 15, top: 10),
                          child: Image.asset(
                            ImagesIcons.liveDoctorsIcon,
                            height: 30,
                            width: 30,
                          ),
                        ),
                      ),
                    ),
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.play_circle_outline_rounded,
                          color: AppColors.liveDoctorsPlayIconColor,
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
