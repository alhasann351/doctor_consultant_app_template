import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/components/loading_animation.dart';
import '../../../../resources/components/rating_icons.dart';
import '../../../../resources/fonts/app_font_style.dart';
import '../../../../utils/app_utils.dart';
import 'all_category_doctors_booking/widgets/booking_confirm_button.dart';
import 'all_category_doctors_booking/widgets/show_available_times.dart';
import 'all_category_doctors_booking/widgets/show_calendar.dart';

class DoctorsBookingScreen extends StatefulWidget {
  const DoctorsBookingScreen({super.key});

  @override
  State<DoctorsBookingScreen> createState() => _DoctorsBookingScreenState();
}

class _DoctorsBookingScreenState extends State<DoctorsBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'select_time'.tr),
          Positioned(
            top: 80,
            left: 0,
            right: 0,
            bottom: 0,
            child: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 0, left: 10, right: 10, bottom: 10),
                    child: SizedBox(
                      height: 130,
                      width: double.infinity,
                      child: Card(
                        color: AppColors.commonWhiteColor,
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 10),
                              child: ClipRRect(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      Get.arguments['doctorImage'.toString()],
                                  fit: BoxFit.fill,
                                  height: 100,
                                  width: 100,
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
                              top: 15,
                              left: 120,
                              right: 10,
                              bottom: 0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      Get.arguments['doctorName'.toString()],
                                      overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(
                                          fontFamily: AppFontStyle.rubik,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.commonBlackColor),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      AppUtils.showToastMessage(
                                          'favorite_option_clicked'.tr);
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
                                Get.arguments['doctorSpeciality'.toString()],
                                style: const TextStyle(
                                    fontFamily: AppFontStyle.rubik,
                                    fontSize: 15,
                                    color:
                                        AppColors.commonLightBlueAccentColor),
                              ),
                            ),
                            Positioned(
                              top: 65,
                              left: 120,
                              right: 0,
                              bottom: 0,
                              child: Text(
                                Get.arguments['hospitalName'.toString()],
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontFamily: AppFontStyle.rubik,
                                    fontSize: 15,
                                    color: AppColors.commonBlackColor),
                              ),
                            ),
                            Positioned(
                              top: 90,
                              left: 120,
                              right: 0,
                              bottom: 0,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const RatingIcons(),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$",
                                        style: TextStyle(
                                          fontFamily: AppFontStyle.rubik,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: AppColors.commonGreenColor,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 2,
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: Text(
                                          '10_hr'.tr,
                                          style: const TextStyle(
                                            fontFamily: AppFontStyle.rubik,
                                            //fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: AppColors.commonBlackColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child: ShowCalendar(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 10),
                    child:
                        ShowAvailableTimes(), // Return empty widget when ListView is hidden
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: BookingConfirmButton(),
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
