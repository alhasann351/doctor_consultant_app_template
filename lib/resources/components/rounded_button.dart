import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;
  final bool loading;
  final TextStyle? textStyle;
  final Color backgroundColor;

  const RoundedButton({
    super.key,
    required this.title,
    required this.onTap,
    this.loading = false,
    this.textStyle,
    this.backgroundColor = AppColors.defaultButtonBackgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTap!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shadowColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 6,
      ),
      child: Text(
        title,
        style: textStyle,
      ),
    );
  }
}
