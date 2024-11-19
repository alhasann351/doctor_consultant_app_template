import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/white_loading_animation.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/all_category_doctors_booking/cancer_doctors.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/all_category_doctors_booking/ear_doctors.dart';
import 'package:doctor_consultant_app_template/views/doctors_booking/all_category_doctors_booking/eye_doctors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorsCategory extends StatelessWidget {
  DoctorsCategory({super.key});

  final List<String> iconPaths = [
    'https://drive.google.com/uc?export=view&id=1QaFhAXGb4UU86sFQVGt0kn72sOKm51XJ',
    'https://drive.google.com/uc?export=view&id=16P8SYdyk4YsFvQCLQYBnnKFrfb2tCTgi',
    'https://drive.google.com/uc?export=view&id=1bBTGf_G2TdCsQ71CHcIIG67moxUBf6O4',
    'https://drive.google.com/uc?export=view&id=1hgzMCzUqwAVn46MSft_Cnkc5dxlGxgCU',
    'https://drive.google.com/uc?export=view&id=1In6j384sP42RRrPRW1B9uAiSTWB4zlOk',
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

  /*final List<Widget> doctorsCategoryScreens = [
    const CancerDoctorsScreen(),
    const EarDoctorsScreen(),
    const EyeDoctorsScreen(),
    const HeartDoctorsScreen(),
    const SkinDoctorsScreen(),
  ];*/

  final List<Widget> doctorsCategoryScreens = [
    const CancerDoctors(),
    const EarDoctors(),
    const EyeDoctors(),
    /*const HeartDoctorsScreen(),
    const SkinDoctorsScreen(),*/
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 0),
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
          height: 130,
          width: double.infinity,
          child: ListView.builder(
            cacheExtent: 1500,
            scrollDirection: Axis.horizontal,
            //shrinkWrap: true,
            itemCount: iconPaths.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: SizedBox(
                  width: 120,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(RoutesName.doctorsCategoryScreens,
                            arguments: {
                              'doctorsCategoryScreens':
                                  doctorsCategoryScreens[index],
                            });
                      },
                      child: Card(
                        elevation: 10,
                        color: colors[index],
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              imageUrl: iconPaths[index],
                              color: AppColors.doctorsCategoryIconsColor,
                              height: 33,
                              width: 33,
                              placeholder: (context, url) =>
                                  const WhiteLoadingAnimation(),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.error,
                                color: Colors.white,
                              ),
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
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
