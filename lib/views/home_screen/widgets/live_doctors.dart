import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/assets/images_icons.dart';

class LiveDoctors extends StatefulWidget {
  const LiveDoctors({super.key});

  @override
  State<LiveDoctors> createState() => _LiveDoctorsState();
}

class _LiveDoctorsState extends State<LiveDoctors> {
  final List<String> imagePaths = [
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

  bool isImageLoaded = false;

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
                            color: AppColors.cardBackgroundColor.withOpacity(1),
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
                                /*placeholder: (context, url) =>
                                    const LoadingAnimation(),*/
                                errorWidget: (context, url, error) =>
                                    const Icon(
                                  Icons.error,
                                  color: Colors.grey,
                                ),
                                /*child: Image.asset(
                                imagePaths[index],
                                fit: BoxFit.cover,
                              ),*/
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
                            color: AppColors.liveDoctorsPlayIconColor,
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
