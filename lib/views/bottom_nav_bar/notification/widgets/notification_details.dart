import 'package:doctor_consultant_app_template/resources/assets/images_icons.dart';
import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:flutter/material.dart';

class NotificationDetails extends StatelessWidget {
  NotificationDetails({super.key});

  final List<String> notifications = [
    'Thanks for install our app',
    'Booking successful',
    'Cancer doctor booking success',
    'Ear doctor booking success',
    'Eye doctor booking success',
    'Skin doctor booking success',
    'Heart doctor booking success',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding:
            const EdgeInsets.only(top: 50, left: 10, right: 10, bottom: 80),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Dismissible(
                key: UniqueKey(),
                direction: DismissDirection.endToStart,
                background: const Card(
                  color: AppColors.commonRedColor,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        size: 25,
                        Icons.delete_forever,
                        color: AppColors.commonWhiteColor,
                      ),
                    ),
                  ),
                ),
                child: Card(
                  elevation: 5,
                  color: AppColors.commonWhiteColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 8.0),
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: AppColors.commonWhiteColor,
                            foregroundImage: AssetImage(
                              ImagesIcons.appIcon,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Doctor consultant',
                              style: TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: AppColors.commonBlackColor),
                            ),
                            Text(
                              notifications[index],
                              style: const TextStyle(
                                  fontFamily: AppFontStyle.rubik,
                                  fontSize: 16,
                                  color: AppColors.commonGreyColor),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
