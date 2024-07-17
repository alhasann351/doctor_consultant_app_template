import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/show_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputPassword extends StatelessWidget {
  const InputPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final showPasswordController = Get.put(ShowPasswordController());

    return Obx(
      () => TextFormField(
        cursorColor: AppColors.cursorColor,
        keyboardType: TextInputType.text,
        style: const TextStyle(
          fontFamily: AppFontStyle.rubik,
          fontSize: 18,
          color: AppColors.passwordTextColor,
        ),
        obscureText: showPasswordController.showPassword.value,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.fillColor,
          hintText: 'input_password_hint_text'.tr,
          hintStyle: const TextStyle(
            fontFamily: AppFontStyle.rubik,
            fontSize: 18,
            color: AppColors.hintTextColor,
          ),
          prefixIcon: const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Icon(
              Icons.vpn_key_outlined,
              color: AppColors.prefixIconColor,
              size: 30,
            ),
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              showPasswordController.passwordShow();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                showPasswordController.showPassword.value
                    ? Icons.visibility_off_outlined
                    : Icons.visibility_outlined,
                color: AppColors.suffixIconColor,
                size: 30,
              ),
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
