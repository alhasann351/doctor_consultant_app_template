import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/live_doctors/widgets/comments_input.dart';
import 'package:doctor_consultant_app_template/views/home_screen/live_doctors/widgets/doctor_profile.dart';
import 'package:doctor_consultant_app_template/views/home_screen/live_doctors/widgets/live_doctors_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/components/loading_animation.dart';

class LiveDoctorsScreen extends StatelessWidget {
  const LiveDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: CachedNetworkImage(
              imageUrl: Get.arguments['image'.toString()],
              fit: BoxFit.cover,
              placeholder: (context, url) => const LoadingAnimation(),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                color: AppColors.commonGreyColor,
              ),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: DoctorProfile(),
          ),
          const Positioned(
            top: 410,
            left: 10,
            right: 10,
            bottom: 400,
            child: LiveDoctorsName(),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 20,
            child: CommentsInput(),
          ),
        ],
      ),
    );
  }
}
