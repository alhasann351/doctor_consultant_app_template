import 'package:doctor_consultant_app_template/resources/components/back_button_title.dart';
import 'package:doctor_consultant_app_template/resources/components/background_design.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input_screen/widgets/popular_search_text.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input_screen/widgets/search_input.dart';
import 'package:doctor_consultant_app_template/views/home_screen/search_input_screen/widgets/search_input_description_text.dart';
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
                  const SearchInputDescriptionText(),
                  const SearchInput(),
                  PopularSearchText(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
