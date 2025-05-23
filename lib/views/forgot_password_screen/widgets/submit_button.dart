import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:doctor_consultant_app_template/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/fonts/app_font_style.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: MediaQuery.of(context).size.width,
      child: RoundedButton(
        title: 'submit_button_text'.tr,
        backgroundColor: AppColors.commonLightBlueAccentColor.withOpacity(0.8),
        textStyle: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: AppColors.commonWhiteColor,
        ),
        onTap: () {
          AppUtils.showToastMessage('forgot_password_submit_toast'.tr);
        },
      ),
    );
  }
}
