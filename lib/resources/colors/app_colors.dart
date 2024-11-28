import 'package:flutter/material.dart';

class AppColors {
  //common colors
  static const Color commonWhiteColor = Colors.white;
  static const Color commonBlackColor = Colors.black;
  static const Color commonGreyColor = Colors.grey;
  static const Color commonGreenColor = Color(0xFF0EBE7F);
  static const Color commonYellowColor = Colors.yellow;
  static const Color commonBlueColor = Colors.blue;
  static const Color commonLightBlueAccentColor = Colors.lightBlueAccent;
  static const Color commonGreenAccentColor = Colors.greenAccent;

  //users profile
  static const Color usersProfileDetailsTopLeftBackgroundColor =
      Color(0xFF0EBE7E);
  static const Color usersProfileDetailsBottomRightBackgroundColor =
      Color(0xFF07D9AD);

  //live doctors
  static Color liveDoctorsCardBackgroundColor =
      Colors.transparent.withOpacity(1);
  static const Color liveDoctorsImageDarkenColor = Colors.black26;
  static Color liveDoctorsNameBackgroundColor = Colors.black26.withOpacity(0.2);
  static Color liveDoctorsCommentBoxColor = Colors.black26.withOpacity(0.2);

  //doctors category
  static const Color doctorsCategoryCancerCardColor = Colors.orange;
  static const Color doctorsCategoryEarCardColor = Colors.blue;
  static const Color doctorsCategoryEyeCardColor = Colors.deepPurple;
  static const Color doctorsCategoryHeartCardColor = Colors.red;
  static const Color doctorsCategorySkinCardColor = Colors.pink;
  static const Color seePatientsTextColor = Colors.blueAccent;
  static const Color favoriteIconColor = Colors.red;
}
