import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/date_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailsInput extends StatelessWidget {
  UserDetailsInput({super.key});

  final DateController dateController = Get.put(DateController());

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFormField(
            initialValue: 'Al-Hasan',
            cursorColor: AppColors.commonBlackColor,
            keyboardType: TextInputType.text,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              color: AppColors.commonBlackColor,
            ),
            decoration: InputDecoration(
              labelText: 'Name',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 22,
                  color: AppColors.commonGreyColor),
              filled: true,
              fillColor: AppColors.commonWhiteColor,
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            initialValue: '01780384634',
            cursorColor: AppColors.commonBlackColor,
            keyboardType: TextInputType.phone,
            style: const TextStyle(
              fontFamily: AppFontStyle.rubik,
              fontSize: 18,
              color: AppColors.commonBlackColor,
            ),
            decoration: InputDecoration(
              labelText: 'Mobile number',
              floatingLabelBehavior: FloatingLabelBehavior.always,
              labelStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 22,
                  color: AppColors.commonGreyColor),
              filled: true,
              fillColor: AppColors.commonWhiteColor,
              enabledBorder: UnderlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: const BorderSide(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Obx(
            () => TextFormField(
              showCursor: false,
              controller: TextEditingController(
                  text: dateController.selectDateOfBirth.value),
              onTap: () {
                dateController.pickDate(context);
              },
              style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontSize: 18,
                color: AppColors.commonBlackColor,
              ),
              decoration: InputDecoration(
                labelText: 'Date of birth',
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelStyle: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontSize: 22,
                    color: AppColors.commonGreyColor),
                filled: true,
                fillColor: AppColors.commonWhiteColor,
                enabledBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: const BorderSide(style: BorderStyle.none),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
