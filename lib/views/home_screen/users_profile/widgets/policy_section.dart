import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';
import '../../../../resources/routes/routes_name.dart';

class PolicySection extends StatelessWidget {
  const PolicySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'policy_section'.tr,
          style: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: AppColors.commonBlackColor,
          ),
        ),
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RoutesName.privacyPolicyScreen);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColors.commonWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'privacy_policy'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.commonBlackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RoutesName.termsConditionsScreen);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColors.commonWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'terms_conditions'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.commonBlackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RoutesName.faqScreen);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColors.commonWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'faq'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.commonBlackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 55,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              Get.toNamed(RoutesName.aboutUsScreen);
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: AppColors.commonWhiteColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'about_us'.tr,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.commonBlackColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
