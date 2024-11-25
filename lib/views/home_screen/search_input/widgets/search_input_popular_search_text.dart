import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchInputPopularSearchText extends StatelessWidget {
  SearchInputPopularSearchText({super.key});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 20, bottom: 10, left: 10, right: 10),
          child: Text(
            'search_input_popular_search_title_text'.tr,
            style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: AppColors.commonBlackColor),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
            height: 180,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 50,
                  mainAxisSpacing: 5,
                ),
                itemCount: popularSearchText.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: AppColors.commonWhiteColor,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Text(
                        popularSearchText[index],
                        style: const TextStyle(
                            fontFamily: AppFontStyle.rubik,
                            color: AppColors.commonBlackColor),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
