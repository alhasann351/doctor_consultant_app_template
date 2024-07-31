import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        cursorColor: AppColors.searchCursorColor,
        keyboardType: TextInputType.text,
        style: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontSize: 18,
          color: AppColors.searchNameTextColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.searchFillColor,
          hintText: 'search_input_name_hint_text'.tr,
          hintStyle: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 18,
            color: AppColors.searchHintTextColor,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.search_outlined,
              color: AppColors.searchPrefixIconColor,
              size: 30,
            ),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.cancel_outlined,
              color: AppColors.searchSuffixIconColor,
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
    );
  }
}
