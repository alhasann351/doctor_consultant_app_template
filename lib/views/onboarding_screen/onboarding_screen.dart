import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/widgets/onboarding_screen_1.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/widgets/onboarding_screen_2.dart';
import 'package:doctor_consultant_app_template/views/onboarding_screen/widgets/onboarding_screen_3.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 342,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.topLeft,
                  radius: 0.8,
                  colors: [
                    AppColors.topBackgroundColor.withOpacity(0.3),
                    AppColors.centerBackgroundColor.withOpacity(0.3),
                  ],
                  stops: const [
                    0.1,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              height: 342,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment.bottomRight,
                  radius: 0.8,
                  colors: [
                    AppColors.bottomBackgroundColor.withOpacity(0.3),
                    AppColors.centerBackgroundColor.withOpacity(0.3),
                  ],
                  stops: const [
                    0.1,
                    1.0,
                  ],
                ),
              ),
            ),
          ),
          PageView(
            children: const [
              OnboardingScreen1(),
              OnboardingScreen2(),
              OnboardingScreen3(),
            ],
          ),
        ],
      ),
    );
  }
}
