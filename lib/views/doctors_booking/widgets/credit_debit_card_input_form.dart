import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CreditDebitCardInputForm extends StatelessWidget {
  const CreditDebitCardInputForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: TextFormField(
              cursorColor: AppColors.signupCursorColor,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontSize: 18,
                color: AppColors.signupNameTextColor,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.signupFillColor,
                hintText: 'name_on_the_card'.tr,
                hintStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 18,
                  color: AppColors.signupHintTextColor,
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
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            child: TextFormField(
              cursorColor: AppColors.signupCursorColor,
              keyboardType: TextInputType.number,
              style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontSize: 18,
                color: AppColors.signupNameTextColor,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.signupFillColor,
                hintText: 'card_number'.tr,
                hintStyle: const TextStyle(
                  fontFamily: AppFontStyle.rubik,
                  fontSize: 18,
                  color: AppColors.signupHintTextColor,
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
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 50,
                  //width: 200,
                  child: TextFormField(
                    cursorColor: AppColors.signupCursorColor,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 18,
                      color: AppColors.signupNameTextColor,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.signupFillColor,
                      hintText: 'card_expiry_date'.tr,
                      hintStyle: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.signupHintTextColor,
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
              ),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: SizedBox(
                  height: 50,
                  //width: 200,
                  child: TextFormField(
                    cursorColor: AppColors.signupCursorColor,
                    keyboardType: TextInputType.number,
                    style: const TextStyle(
                      fontFamily: AppFontStyle.rubik,
                      fontSize: 18,
                      color: AppColors.signupNameTextColor,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.signupFillColor,
                      hintText: 'card_cvv_number'.tr,
                      hintStyle: const TextStyle(
                        fontFamily: AppFontStyle.rubik,
                        fontSize: 18,
                        color: AppColors.signupHintTextColor,
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
              ),
            ],
          ),
        ],
      ),
    );
  }
}
