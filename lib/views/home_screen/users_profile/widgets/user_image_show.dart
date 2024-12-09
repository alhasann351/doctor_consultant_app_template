import 'dart:io';

import 'package:doctor_consultant_app_template/views_models/controllers/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/assets/images_icons.dart';
import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class UserImageShow extends StatelessWidget {
  UserImageShow({super.key});

  final ImagePickerController imagePickerController =
      Get.put(ImagePickerController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: AppColors.commonWhiteColor,
              foregroundImage: imagePickerController.imagePath.isNotEmpty
                  ? FileImage(File(imagePickerController.imagePath.toString()))
                  : const AssetImage(ImagesIcons.profileImage),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    imagePickerController.getImageCamera();
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.camera_alt_outlined,
                        color: AppColors.commonBlackColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'camera'.tr,
                        style: const TextStyle(
                            fontFamily: AppFontStyle.rubik,
                            fontSize: 18,
                            color: AppColors.commonBlackColor),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                GestureDetector(
                  onTap: () {
                    imagePickerController.getImageGallery();
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.image_outlined,
                        color: AppColors.commonBlackColor,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'gallery'.tr,
                        style: const TextStyle(
                            fontFamily: AppFontStyle.rubik,
                            fontSize: 18,
                            color: AppColors.commonBlackColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
