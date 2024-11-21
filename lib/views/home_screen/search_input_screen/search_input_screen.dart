import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';

class SearchInputScreen extends StatelessWidget {
  const SearchInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          const BackgroundDesign(),
          SafeArea(
            child: BackButtonTitle(titleText: 'search_input_title_text'.tr),
          ),
          Padding(
            padding:
                const EdgeInsets.only(top: 70, bottom: 10, left: 10, right: 10),
            child: SafeArea(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 20, left: 10, right: 10),
                    child: Text(
                      'search_input_description_text'.tr,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFontStyle.rubik,
                        color: AppColors.commonBlackColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: TextFormField(
                      cursorColor: AppColors.commonBlackColor,
                      keyboardType: TextInputType.text,
                      style: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.commonBlackColor,
                      ),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.commonWhiteColor,
                        hintText: 'search_input_hint_text'.tr,
                        hintStyle: const TextStyle(
                          fontFamily: AppFontStyle.rubik,
                          fontSize: 18,
                          color: AppColors.commonGreyColor,
                        ),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Icon(
                            Icons.search_outlined,
                            color: AppColors.commonGreyColor,
                            size: 30,
                          ),
                        ),
                        suffixIcon: const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: Icon(
                            Icons.cancel_outlined,
                            color: AppColors.commonGreyColor,
                            size: 25,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(style: BorderStyle.none),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
