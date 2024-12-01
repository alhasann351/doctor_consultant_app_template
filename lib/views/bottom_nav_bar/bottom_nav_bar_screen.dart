import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'favorite/favorite_screen.dart';
import 'message/message_screen.dart';
import 'notification/notification_screen.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int currentTab = 0;
  final List<Widget> pages = [
    const HomeScreen(),
    const FavoriteScreen(),
    const NotificationScreen(),
    const MessageScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages.elementAt(currentTab)),
      bottomSheet: Container(
        decoration: const BoxDecoration(
          color: AppColors.commonWhiteColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
          child: GNav(
            selectedIndex: currentTab,
            onTabChange: (index) {
              setState(() {
                currentTab = index;
              });
            },
            gap: 8,
            activeColor: AppColors.commonWhiteColor,
            tabBackgroundColor: AppColors.commonGreenColor,
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            backgroundColor: AppColors.commonWhiteColor,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
                text: 'nav_home'.tr,
                textStyle: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.commonWhiteColor),
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
                text: 'nav_favorite'.tr,
                textStyle: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.commonWhiteColor),
              ),
              GButton(
                icon: Icons.notifications_active_outlined,
                text: 'nav_notifications'.tr,
                textStyle: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.commonWhiteColor),
              ),
              GButton(
                icon: Icons.message_outlined,
                text: 'nav_message'.tr,
                textStyle: const TextStyle(
                    fontFamily: AppFontStyle.rubik,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: AppColors.commonWhiteColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
