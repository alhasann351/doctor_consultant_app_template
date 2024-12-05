import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views/bottom_nav_bar/message/widgets/message_input.dart';
import 'package:doctor_consultant_app_template/views/bottom_nav_bar/message/widgets/message_title.dart';
import 'package:flutter/material.dart';

import '../../../resources/components/background_design.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.commonWhiteColor,
      body: Stack(
        children: [
          BackgroundDesign(),
          MessageTitle(),
          Center(
              child: Text(
            'Not Message Yet',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontFamily: AppFontStyle.rubik,
                color: AppColors.commonBlackColor),
          )),
          Positioned(bottom: 80, left: 10, right: 10, child: MessageInput()),
        ],
      ),
    );
  }
}
