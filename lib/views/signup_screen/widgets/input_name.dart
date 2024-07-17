import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputName extends StatelessWidget {
  const InputName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.cursorColor,
      keyboardType: TextInputType.text,
      style: const TextStyle(
        fontFamily: AppFontStyle.rubik,
        fontSize: 18,
        color: AppColors.nameTextColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.fillColor,
        hintText: 'input_name_hint_text'.tr,
        hintStyle: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontSize: 18,
          color: AppColors.hintTextColor,
        ),
        prefixIcon: const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Icon(
            Icons.person_2_outlined,
            color: AppColors.prefixIconColor,
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
    );
  }
}
