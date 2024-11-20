import 'package:flutter/material.dart';

import '../colors/app_colors.dart';

class BackgroundDesign extends StatelessWidget {
  const BackgroundDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColors.homeBottomBackgroundColor.withOpacity(0.2),
            AppColors.homeTopBackgroundColor.withOpacity(0.2),
          ],
        ),
      ),
    );
  }
}
