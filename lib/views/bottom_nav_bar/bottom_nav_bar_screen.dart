import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            backgroundColor: AppColors.commonWhiteColor,
            tabs: [
              GButton(
                icon: Icons.home_outlined,
              ),
              GButton(
                icon: Icons.favorite_border_outlined,
              ),
              GButton(
                icon: Icons.notifications_active_outlined,
              ),
              GButton(
                icon: Icons.message_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
