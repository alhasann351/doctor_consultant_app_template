import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsCategory extends StatelessWidget {
  DoctorsCategory({super.key});

  final List<String> iconPaths = [
    ImagesIcons.doctorsCategoryCancerIcon,
    ImagesIcons.doctorsCategoryEarIcon,
    ImagesIcons.doctorsCategoryEyeIcon,
    ImagesIcons.doctorsCategoryHeartIcon,
    ImagesIcons.doctorsCategorySkinIcon,
  ];
  final List<String> categoryName = [
    'cancer'.tr,
    'ear'.tr,
    'eye'.tr,
    'heart'.tr,
    'skin'.tr,
  ];
  final List<Color> colors = [
    AppColors.doctorsCategoryCancerCardColor,
    AppColors.doctorsCategoryEarCardColor,
    AppColors.doctorsCategoryEyeCardColor,
    AppColors.doctorsCategoryHeartCardColor,
    AppColors.doctorsCategorySkinCardColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Text(
            'doctors_category_title_text'.tr,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: AppColors.doctorsCategoryTitleTextColor,
            ),
          ),
        ),
        SizedBox(
          height: 150,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: iconPaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SizedBox(
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Card(
                      elevation: 10,
                      color: colors[index],
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            iconPaths[index],
                            color: AppColors.doctorsCategoryIconsColor,
                            height: 33,
                            width: 33,
                          ),
                          const SizedBox(height: 10),
                          Text(
                            categoryName[index],
                            style: const TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: AppColors.categoryNameTextColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
