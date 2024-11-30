import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), // Adjust the radius for the curve
          topRight: Radius.circular(20),
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: GNav(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          backgroundColor: AppColors.commonWhiteColor,
          tabs: [
            GButton(icon: Icons.home_outlined),
            GButton(icon: Icons.favorite_border_outlined),
            GButton(icon: Icons.notifications_active_outlined),
            GButton(icon: Icons.message_outlined),
          ],
        ),
      ),
    );
  }
}
