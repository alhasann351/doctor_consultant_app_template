import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/assets/images_icons.dart';
import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';
import '../../../../resources/routes/routes_name.dart';

class LiveDoctorsDesign extends StatelessWidget {
  LiveDoctorsDesign({super.key});

  final List<String> imagePaths = [
    'https://drive.google.com/uc?export=view&id=1ohEaip9_1yZkLSLm9overFPw3MD70FyC',
    'https://drive.google.com/uc?export=view&id=1NFhLZ-fy3eqhJN-b1ooPO22hcps-wkkp',
    'https://drive.google.com/uc?export=view&id=1dQWLSIDgqn0XjCOTTBA-I9mEijy08oP_',
    'https://drive.google.com/uc?export=view&id=1viq51sr2v9Hiqc_2v81kA0CYqCC6I0Ho',
    'https://drive.google.com/uc?export=view&id=19Gt-x8sTVlHZGdzJUoaFqcY1iDf6jIQA',
    'https://drive.google.com/uc?export=view&id=1fnlnGS6KYulTZB_eFOvoaxv9itNVPboI',
    'https://drive.google.com/uc?export=view&id=1Fl87pQZGBvlZFFppF_hmopW0FEW5BanQ',
    'https://drive.google.com/uc?export=view&id=1pjO8f7g2MXtzPHLSGGE2vY39qJc4Pem5',
    'https://drive.google.com/uc?export=view&id=1KDh_VdMxwsgSy7Z6nMbgj8A3PCrVZlb3',
    'https://drive.google.com/uc?export=view&id=1qI2lrwyhXYUMKOsgmnXPnAjg4KmXpYDY',
  ];

  final List<String> liveDoctorsNames = [
    'Dr.Jonathan Evans',
    'Dr.Charlotte Davies',
    'Dr.Henry Brooks',
    'Dr.Amelia Hughes',
    'Dr.Samuel Clarke',
    'Dr.Victoria Scott',
    'Dr.Andrew Collins',
    'Dr.Hannah Mitchell',
    'Dr.Philip Wright',
    'Dr. Rebecca Adams',
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
              color: AppColors.commonBlackColor,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SizedBox(
            height: 220,
            width: double.infinity,
            child: ListView.builder(
              cacheExtent: 1500,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(RoutesName.liveDoctorsScreen, arguments: {
                      'image': imagePaths[index],
                      'liveDoctorsNames': liveDoctorsNames[index],
                    });
                  },
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: SizedBox(
                          height: 200,
                          width: 150,
                          child: Card(
                            color: AppColors.liveDoctorsCardBackgroundColor,
                            elevation: 10,
                            clipBehavior: Clip.antiAlias,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8)),
                            child: ColorFiltered(
                              colorFilter: const ColorFilter.mode(
                                  AppColors.liveDoctorsImageDarkenColor,
                                  BlendMode.darken),
                              child: CachedNetworkImage(
                                imageUrl: imagePaths[index],
                                fit: BoxFit.cover,
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                  color: AppColors.commonGreyColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned.fill(
                        child: Align(
                          alignment: Alignment.center,
                          child: Icon(
                            Icons.play_circle_outline_rounded,
                            color: AppColors.commonWhiteColor,
                            size: 35,
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
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
