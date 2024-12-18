import 'package:get/get.dart';

class SwitchNotificationsController extends GetxController {
  RxBool emailNotificationSwitch = false.obs;
  RxBool generalNotificationSwitch = false.obs;
  RxBool newUpdateNotificationSwitch = false.obs;
  RxBool bookingNotificationSwitch = false.obs;
}
