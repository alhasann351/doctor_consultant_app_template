import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class UserRating extends StatelessWidget {
  const UserRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          size: 20,
          color: AppColors.commonYellowColor,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: AppColors.commonYellowColor,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: AppColors.commonYellowColor,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: AppColors.commonYellowColor,
        ),
        Icon(
          Icons.star,
          size: 20,
          color: AppColors.commonGreyColor,
        ),
      ],
    );
  }
}
