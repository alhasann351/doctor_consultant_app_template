import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_consultant_app_template/views/live_doctors_screen/widgets/back_button_doctor_profile.dart';
import 'package:doctor_consultant_app_template/views/live_doctors_screen/widgets/comments_input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/app_colors.dart';
import '../../resources/components/loading_animation.dart';

class LiveDoctorsScreen extends StatelessWidget {
  const LiveDoctorsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
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
                color: Colors.grey,
              ),
            ),
          ),
          const Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: BackButtonDoctorProfile(),
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
