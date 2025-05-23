import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class RadialGradientBackgroundDesign extends StatelessWidget {
  const RadialGradientBackgroundDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                  AppColors.commonLightBlueAccentColor.withOpacity(0.3),
                  AppColors.commonWhiteColor.withOpacity(0.3),
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
                  AppColors.commonGreenAccentColor.withOpacity(0.3),
                  AppColors.commonWhiteColor.withOpacity(0.3),
                ],
                stops: const [
                  0.1,
                  1.0,
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
