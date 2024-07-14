import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../resources/colors/app_colors.dart';
import '../../resources/fonts/app_font_style.dart';
import '../../views_models/services/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashService = SplashService();

  @override
  void initState() {
    super.initState();
    splashService.isOnboardingScreen();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage(ImagesIcons.splashBackgroundImage), context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(ImagesIcons.splashBackgroundImage),
            fit: BoxFit.cover,
            //opacity: 2.0,
          ),
          color: Colors.transparent,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'splash_text_1'.tr,
              style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontSize: 26,
                color: AppColors.splashTextColor,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'splash_text_2'.tr,
              style: const TextStyle(
                fontFamily: AppFontStyle.rubik,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: AppColors.splashTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
