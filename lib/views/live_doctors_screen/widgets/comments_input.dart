import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resources/colors/app_colors.dart';
import '../../../resources/fonts/app_font_style.dart';

class CommentsInput extends StatelessWidget {
  const CommentsInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        cursorColor: AppColors.commentsInputCursorColor,
        keyboardType: TextInputType.text,
        style: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontSize: 18,
          color: AppColors.commentsInputTextColor,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.commentsInputFillColor,
          hintText: 'comments_input_hint_text'.tr,
          hintStyle: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 18,
            color: AppColors.commentsInputHintTextColor,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.comment_outlined,
              color: AppColors.commentsInputPrefixIconColor,
              size: 30,
            ),
          ),
          suffixIcon: const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(
              Icons.send_outlined,
              color: AppColors.commentsInputSuffixIconColor,
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
