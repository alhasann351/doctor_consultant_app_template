import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularSearchText extends StatelessWidget {
  PopularSearchText({super.key});

  final List<String> popularSearchText = [
    'search_input_cancer'.tr,
    'search_input_ear'.tr,
    'search_input_eye'.tr,
    'search_input_heart'.tr,
    'search_input_skin'.tr,
    'search_input_specialist'.tr,
    'search_input_popular'.tr,
    'search_input_experience'.tr,
    'search_input_doctors'.tr,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: popularSearchText.length,
          itemBuilder: (context, index) {
            return Card(
              color: AppColors.commonWhiteColor,
              elevation: 10,
              child: Center(child: Text(popularSearchText[index])),
            );
          }),
    );
  }
}
