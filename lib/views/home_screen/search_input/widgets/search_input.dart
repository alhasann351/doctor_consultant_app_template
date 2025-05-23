import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../resources/colors/app_colors.dart';
import '../../../../resources/fonts/app_font_style.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: TextFormField(
          onTap: () {
            Get.toNamed(RoutesName.searchInputScreen);
          },
          showCursor: false,
          keyboardType: TextInputType.none,
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
    );
  }
}
