import 'package:doctor_consultant_app_template/views/home_screen/users_profile/widgets/user_profile_details.dart';
import 'package:flutter/material.dart';

import '../../../resources/colors/app_colors.dart';

class UsersProfile extends StatelessWidget {
  const UsersProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 156,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.usersProfileDetailsTopLeftBackgroundColor
                .withOpacity(0.7),
            AppColors.usersProfileDetailsBottomRightBackgroundColor
                .withOpacity(0.7),
          ],
        ),
      ),
      child: const UserProfileDetails(),
    );
  }
}
