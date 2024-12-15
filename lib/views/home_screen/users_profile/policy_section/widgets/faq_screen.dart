import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../resources/components/back_button_title.dart';
import '../../../../../resources/components/background_design.dart';

class FAQScreen extends StatelessWidget {
  FAQScreen({super.key});

  final List<String> titleQuestion = [
    'title_question_1'.tr,
    'title_question_2'.tr,
    'title_question_3'.tr,
    'title_question_4'.tr,
    'title_question_5'.tr,
    'title_question_6'.tr,
    'title_question_7'.tr,
    'title_question_8'.tr,
    'title_question_9'.tr,
    'title_question_10'.tr,
    'title_question_8'.tr,
    'title_question_9'.tr,
    'title_question_10'.tr,
  ];
  final List<String> answerQuestion = [
    'answer_question_1'.tr,
    'answer_question_2'.tr,
    'answer_question_3'.tr,
    'answer_question_4'.tr,
    'answer_question_5'.tr,
    'answer_question_6'.tr,
    'answer_question_7'.tr,
    'answer_question_8'.tr,
    'answer_question_9'.tr,
    'answer_question_10'.tr,
    'answer_question_8'.tr,
    'answer_question_9'.tr,
    'answer_question_10'.tr,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          BackButtonTitle(titleText: 'faq'.tr),
          Positioned(
            top: 75,
            bottom: 10,
            right: 10,
            left: 10,
            child: SafeArea(
              child: ListView.builder(
                itemCount: titleQuestion.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: AppColors.commonWhiteColor,
                    child: ExpansionTile(
                      shape: const Border(),
                      title: Text(
                        titleQuestion[index],
                        style: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: AppColors.commonBlackColor,
                        ),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            answerQuestion[index],
                            style: const TextStyle(
                              fontFamily: AppFontStyle.rubik,
                              fontSize: 15,
                              color: AppColors.commonGreyColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
