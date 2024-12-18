import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/switch_languages_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SwitchLanguages extends StatelessWidget {
  SwitchLanguages({super.key});

  final SwitchLanguagesController switchLanguagesController =
      Get.put(SwitchLanguagesController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: switchLanguagesController.languages.length,
        itemBuilder: (context, index) {
          return SizedBox(
            height: 75,
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Card(
                color: Colors.white,
                elevation: 5,
                child: Obx(
                  () => ListTile(
                    title: Text(
                      switchLanguagesController.languages[index]['label']!,
                      style: const TextStyle(
                          fontSize: 18,
                          fontFamily: AppFontStyle.rubik,
                          color: AppColors.commonBlackColor),
                    ),
                    trailing: Radio<int>(
                      value: index,
                      activeColor: AppColors.commonGreenColor,
                      groupValue:
                          switchLanguagesController.selectedLanguageIndex.value,
                      onChanged: (value) {
                        if (value != null) {
                          switchLanguagesController.saveLanguage(value);
                        }
                      },
                    ),
                    onTap: () {
                      switchLanguagesController.saveLanguage(index);
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
