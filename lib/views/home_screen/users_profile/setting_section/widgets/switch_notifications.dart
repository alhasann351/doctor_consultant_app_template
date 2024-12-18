import 'package:doctor_consultant_app_template/resources/colors/app_colors.dart';
import 'package:doctor_consultant_app_template/resources/fonts/app_font_style.dart';
import 'package:doctor_consultant_app_template/views_models/controllers/switch_notifications_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:get/get.dart';

class SwitchNotifications extends StatelessWidget {
  SwitchNotifications({super.key});

  final SwitchNotificationsController switchNotificationsController =
      Get.put(SwitchNotificationsController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        SizedBox(
          height: 75,
          child: Card(
            elevation: 5,
            color: AppColors.commonWhiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'email_notifications'.tr,
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: AppFontStyle.rubik,
                        color: AppColors.commonBlackColor),
                  ),
                  Obx(
                    () => FlutterSwitch(
                        height: 30,
                        activeColor: AppColors.commonGreenColor,
                        activeTextColor: AppColors.commonWhiteColor,
                        value: switchNotificationsController
                            .emailNotificationSwitch.value,
                        valueFontSize: 16,
                        showOnOff: true,
                        onToggle: (onToggle) {
                          switchNotificationsController
                              .emailNotificationSwitch.value = onToggle;
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 75,
          child: Card(
            elevation: 5,
            color: AppColors.commonWhiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'general_notifications'.tr,
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: AppFontStyle.rubik,
                        color: AppColors.commonBlackColor),
                  ),
                  Obx(
                    () => FlutterSwitch(
                        height: 30,
                        activeColor: AppColors.commonGreenColor,
                        activeTextColor: AppColors.commonWhiteColor,
                        value: switchNotificationsController
                            .generalNotificationSwitch.value,
                        valueFontSize: 16,
                        showOnOff: true,
                        onToggle: (onToggle) {
                          switchNotificationsController
                              .generalNotificationSwitch.value = onToggle;
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 75,
          child: Card(
            elevation: 5,
            color: AppColors.commonWhiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'new_update_notifications'.tr,
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: AppFontStyle.rubik,
                        color: AppColors.commonBlackColor),
                  ),
                  Obx(
                    () => FlutterSwitch(
                        height: 30,
                        activeColor: AppColors.commonGreenColor,
                        activeTextColor: AppColors.commonWhiteColor,
                        value: switchNotificationsController
                            .newUpdateNotificationSwitch.value,
                        valueFontSize: 16,
                        showOnOff: true,
                        onToggle: (onToggle) {
                          switchNotificationsController
                              .newUpdateNotificationSwitch.value = onToggle;
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          height: 75,
          child: Card(
            elevation: 5,
            color: AppColors.commonWhiteColor,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'booking_notifications'.tr,
                    style: const TextStyle(
                        fontSize: 18,
                        fontFamily: AppFontStyle.rubik,
                        color: AppColors.commonBlackColor),
                  ),
                  Obx(
                    () => FlutterSwitch(
                        height: 30,
                        activeColor: AppColors.commonGreenColor,
                        activeTextColor: AppColors.commonWhiteColor,
                        value: switchNotificationsController
                            .bookingNotificationSwitch.value,
                        valueFontSize: 16,
                        showOnOff: true,
                        onToggle: (onToggle) {
                          switchNotificationsController
                              .bookingNotificationSwitch.value = onToggle;
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
