import 'package:get/get.dart';

class PaymentButtonController extends GetxController {
  var paypalSelected = false.obs;

  void selectPaypal() {
    paypalSelected.value = !paypalSelected.value;
  }
}
