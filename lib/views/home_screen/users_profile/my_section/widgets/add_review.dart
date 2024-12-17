import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/views/home_screen/users_profile/my_section/widgets/rating_doctors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/back_button_title.dart';
import '../../../../../resources/components/background_design.dart';
import '../../../../../resources/components/loading_animation.dart';
import '../../../../../resources/fonts/app_font_style.dart';

class AddReview extends StatelessWidget {
  const AddReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'add_review'.tr),
          Positioned(
            top: 70,
            bottom: 10,
            right: 10,
            left: 10,
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        Card(
                          color: AppColors.commonWhiteColor,
                          elevation: 5,
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 10, left: 10, bottom: 10),
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10)),
                                  child: CachedNetworkImage(
                                    fit: BoxFit.fill,
                                    height: 95,
                                    width: 100,
                                    imageUrl:
                                        Get.arguments['doctorImage'.toString()],
                                    placeholder: (context, url) =>
                                        const LoadingAnimation(),
                                    errorWidget: (context, url, error) =>
                                        const Icon(
                                      Icons.error,
                                      color: AppColors.commonGreyColor,
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 10,
                                left: 120,
                                right: 10,
                                bottom: 0,
                                child: Text(
                                  Get.arguments['doctorName'.toString()],
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.commonBlackColor),
                                ),
                              ),
                              Positioned(
                                top: 38,
                                left: 120,
                                right: 0,
                                bottom: 0,
                                child: Text(
                                  Get.arguments['doctorSpeciality'.toString()],
                                  style: const TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 15,
                                      color:
                                          AppColors.commonLightBlueAccentColor),
                                ),
                              ),
                              Positioned(
                                top: 63,
                                left: 120,
                                right: 0,
                                bottom: 0,
                                child: Text(
                                  Get.arguments['hospitalName'.toString()],
                                  style: const TextStyle(
                                      fontFamily: AppFontStyle.rubik,
                                      fontSize: 15,
                                      color: AppColors.commonBlackColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Form(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 0, left: 10, right: 10),
                            child: TextFormField(
                              maxLines: 5,
                              cursorColor: AppColors.commonBlackColor,
                              keyboardType: TextInputType.text,
                              style: const TextStyle(
                                fontFamily: AppFontStyle.rubik,
                                fontSize: 18,
                                color: AppColors.commonBlackColor,
                              ),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.commonWhiteColor,
                                hintText: 'review'.tr,
                                hintStyle: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 18,
                                  color: AppColors.commonGreyColor,
                                ),
                                prefixIcon: const Padding(
                                  padding:
                                      EdgeInsets.only(left: 8.0, bottom: 115),
                                  child: Icon(
                                    Icons.rate_review_outlined,
                                    color: AppColors.commonGreyColor,
                                    size: 30,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(style: BorderStyle.none),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const RatingDoctors(),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 54,
                    width: MediaQuery.of(context).size.width,
                    child: RoundedButton(
                        title: 'submit'.tr,
                        textStyle: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: AppColors.commonWhiteColor,
                        ),
                        onTap: () {}),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
