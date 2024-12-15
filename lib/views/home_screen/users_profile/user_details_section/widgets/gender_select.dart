import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/colors/app_colors.dart';
import '../../../../../resources/fonts/app_font_style.dart';
import '../../../../../views_models/controllers/gender_controller.dart';

class GenderSelect extends StatefulWidget {
  const GenderSelect({super.key});

  @override
  State<GenderSelect> createState() => _GenderSelectState();
}

class _GenderSelectState extends State<GenderSelect> {
  final GenderController genderController = Get.put(GenderController());

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Gender',
          style: TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              color: AppColors.commonGreyColor),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                  activeColor: AppColors.commonGreenColor,
                  value: 'Male',
                  groupValue: genderController.selectedGender.value,
                  onChanged: (value) {
                    if (value != null) {
                      genderController.setGender(value);
                    }
                  }),
              const Text(
                'Male',
                style: TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 16,
                    color: AppColors.commonBlackColor),
              ),
              const SizedBox(width: 20),
              Radio(
                  activeColor: AppColors.commonGreenColor,
                  value: 'Female',
                  groupValue: genderController.selectedGender.value,
                  onChanged: (value) {
                    if (value != null) {
                      genderController.setGender(value);
                    }
                  }),
              const Text(
                'Female',
                style: TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 16,
                    color: AppColors.commonBlackColor),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
