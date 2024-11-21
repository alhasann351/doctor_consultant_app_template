import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
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
            child: BackButtonTitle(titleText: 'search_input_hint_text'.tr),
          ),
        ],
      ),
    );
  }
}
