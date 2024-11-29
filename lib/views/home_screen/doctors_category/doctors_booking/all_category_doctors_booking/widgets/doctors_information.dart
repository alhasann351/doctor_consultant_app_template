import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../resources/colors/app_colors.dart';
import '../../../../../../resources/components/loading_animation.dart';
import '../../../../../../resources/components/rounded_button.dart';
import '../../../../../../resources/fonts/app_font_style.dart';
import '../../../../../../resources/routes/routes_name.dart';
import '../../../../../../utils/app_utils.dart';

class DoctorsInformation extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String doctorSpeciality;
  final String doctorExperience;
  final String doctorPercentOfGood;
  final String seePatients;
  final String nextAvailable;
  final String nextAvailableTime;
  final String hospitalName;
  final Widget rowChild;

  const DoctorsInformation(
      {super.key,
      required this.doctorImage,
      required this.doctorName,
      required this.doctorSpeciality,
      required this.doctorExperience,
      required this.doctorPercentOfGood,
      required this.seePatients,
      required this.nextAvailable,
      required this.nextAvailableTime,
      required this.hospitalName,
      required this.rowChild});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: AppColors.commonWhiteColor,
          elevation: 8,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CachedNetworkImage(
                    fit: BoxFit.fill,
                    height: 95,
                    width: 100,
                    imageUrl: doctorImage,
                    placeholder: (context, url) => const LoadingAnimation(),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: AppColors.commonGreyColor,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 15,
                left: 120,
                right: 10,
                bottom: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      doctorName,
                      style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColors.commonBlackColor),
                    ),
                    InkWell(
                      onTap: () {
                        AppUtils.showToastMessage('favorite_option_clicked'.tr);
                      },
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: AppColors.commonGreyColor,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 42,
                left: 120,
                right: 0,
                bottom: 0,
                child: Text(
                  doctorSpeciality,
                  style: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 15,
                      color: AppColors.commonLightBlueAccentColor),
                ),
              ),
              Positioned(
                top: 65,
                left: 120,
                right: 0,
                bottom: 0,
                child: Text(
                  doctorExperience,
                  style: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 15,
                      color: AppColors.commonBlackColor),
                ),
              ),
              Positioned(
                top: 90,
                left: 120,
                right: 10,
                bottom: 0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorPercentOfGood,
                      style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 15,
                          color: AppColors.commonGreenColor),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      seePatients,
                      style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 15,
                          color: AppColors.seePatientsTextColor),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                left: 10,
                right: 0,
                bottom: 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      nextAvailable,
                      style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColors.commonLightBlueAccentColor),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      nextAvailableTime,
                      style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 15,
                          color: AppColors.commonGreyColor),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 130,
                left: 220,
                right: 10,
                bottom: 20,
                child: RoundedButton(
                  title: 'book_now'.tr,
                  backgroundColor: AppColors.commonLightBlueAccentColor,
                  textStyle: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      fontFamily: AppFontStyle.rubik,
                      color: AppColors.commonWhiteColor),
                  onTap: () {
                    Get.toNamed(RoutesName.doctorsBookingScreen, arguments: {
                      'doctorImage': doctorImage,
                      'doctorName': doctorName,
                      'doctorSpeciality': doctorSpeciality,
                      'hospitalName': hospitalName,
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
