import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/loading_animation.dart';
import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/fonts/app_font_style.dart';
import '../../../doctors_booking/widgets/rating_icons.dart';

class SearchInputSpecialistDoctors extends StatelessWidget {
  SearchInputSpecialistDoctors({super.key});

  final List<String> image = [
    'https://drive.google.com/uc?export=view&id=1a3UgEUM9CUmYy0S7NBi11HRjG6R4WuWN',
    'https://drive.google.com/uc?export=view&id=1r7LBg33lcRZZ1T2O6VfnjNx-U31xSrbC',
    'https://drive.google.com/uc?export=view&id=1z9NAlCrg3mmh-6IHgHtFfh2Se-feDaya',
    'https://drive.google.com/uc?export=view&id=1_FoaYqsOYIKjvFSJkq1MO3KxgHC822HM',
    'https://drive.google.com/uc?export=view&id=18p1_vSzT9ASdj8-DgQk73voEx3FWQcvQ',
    'https://drive.google.com/uc?export=view&id=1sHCuDu8eikh1oh9VGffjtITgCQHL3aq8',
    'https://drive.google.com/uc?export=view&id=1X8_VB2EUFMKKQLPRXD4bi6B2KEgB1SD0',
    'https://drive.google.com/uc?export=view&id=1THoNiWWkzMOG2W3qf-sFm3mQF3-o-yDZ',
    'https://drive.google.com/uc?export=view&id=1eTsGX651Yn-cpSkNDXSjDnhhBSC4UOEP',
    'https://drive.google.com/uc?export=view&id=1G3agoGVMS29h86XnyYKfX2Z7vrRf_NAL',
  ];

  final List<String> doctorName = [
    'Dr. William Johnson',
    'Dr. Sophia Martinez',
    'Dr. James Anderson',
    'Dr. Emma Thompson',
    'Dr. Michael Roberts',
    'Dr. Isabella Perez',
    'Dr. Christopher Lee',
    'Dr. Olivia Carter',
    'Dr. Daniel Harris',
    'Dr. Ava Wilson',
  ];

  final List<String> doctorSpeciality = [
    'Skin specialist',
    'Heart specialist',
    'Eye specialist',
    'Ear specialist',
    'Cancer specialist',
    'Eye specialist',
    'Cancer specialist',
    'Ear specialist',
    'Heart specialist',
    'Skin specialist',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 0, bottom: 10, left: 10, right: 10),
          child: Text(
            'search_input_specialist_Title_Text'.tr,
            style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.commonBlackColor),
          ),
        ),
        SizedBox(
          height: 260,
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
                              'hospitalName': 'search_input_hospital_name'.tr,
                            });
                      },
                      child: Card(
                        elevation: 10,
                        color: AppColors.commonWhiteColor,
                        clipBehavior: Clip.antiAlias,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                              fit: BoxFit.fill,
                              height: 150,
                              width: double.infinity,
                              imageUrl: image[index],
                              placeholder: (context, url) =>
                                  const LoadingAnimation(),
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
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.commonBlackColor,
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
                                  color: AppColors.commonGreyColor,
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
      ],
    );
  }
}
