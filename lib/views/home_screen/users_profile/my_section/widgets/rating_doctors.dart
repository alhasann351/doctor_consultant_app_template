import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../../../resources/fonts/app_font_style.dart';

class RatingDoctors extends StatefulWidget {
  const RatingDoctors({super.key});

  @override
  State<RatingDoctors> createState() => _RatingDoctorsState();
}

class _RatingDoctorsState extends State<RatingDoctors> {
  @override
  Widget build(BuildContext context) {
    print('object');
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
      child: Card(
        color: AppColors.commonWhiteColor,
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'your_rate'.tr,
                style: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 16,
                    color: AppColors.commonBlackColor),
              ),
              const SizedBox(
                height: 10,
              ),
              RatingBar.builder(
                  initialRating: 2,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  unratedColor: AppColors.commonGreyColor,
                  itemBuilder: (context, _) {
                    return const Icon(
                      Icons.star_border_outlined,
                      color: AppColors.commonYellowColor,
                    );
                  },
                  onRatingUpdate: (rating) {}),
            ],
          ),
        ),
      ),
    );
  }
}
