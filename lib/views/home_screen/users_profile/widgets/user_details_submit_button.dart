import 'package:doctor_consultant_app_template/resources/components/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class UserDetailsSubmitButton extends StatelessWidget {
  const UserDetailsSubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 54,
        width: MediaQuery.of(context).size.width,
        child: RoundedButton(
          title: 'submit'.tr,
          backgroundColor: AppColors.commonGreenColor,
          textStyle: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: AppColors.commonWhiteColor,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}
