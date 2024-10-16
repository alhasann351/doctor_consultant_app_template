import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/app_utils.dart';
import '../colors/app_colors.dart';
import '../fonts/app_font_style.dart';
import 'loading_animation.dart';

class CardDoctorInformation extends StatelessWidget {
  final String doctorImage;
  final String doctorName;
  final String speciality;
  final String hospitalName;
  final TextStyle? textStyle;
  final Color backgroundColor;

  const CardDoctorInformation(
      {super.key,
      required this.doctorName,
      required this.speciality,
      required this.hospitalName,
      required this.textStyle,
      this.backgroundColor = AppColors.doctorInfoCardBackgroundColor,
      required this.doctorImage});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Card(
          color: backgroundColor,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: CachedNetworkImage(
                    imageUrl: doctorImage,
                    fit: BoxFit.fill,
                    height: 95,
                    width: 100,
                    placeholder: (context, url) => const LoadingAnimation(),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      color: Colors.grey,
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
                      style: textStyle,
                    ),
                    InkWell(
                      onTap: () {
                        AppUtils.showToastMessage('Favorite option clicked');
                      },
                      child: const Icon(
                        Icons.favorite,
                        size: 25,
                        color: AppColors.doctorInfoFavoriteIconColor,
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
                  speciality,
                  style: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 15,
                      color: AppColors.doctorSpecialistTextColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
