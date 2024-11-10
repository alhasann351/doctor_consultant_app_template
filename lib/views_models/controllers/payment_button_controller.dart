import 'package:get/get.dart';

class PaymentButtonController extends GetxController {
  var paypalSelected = false.obs;
  var cashOnDeliverySelected = false.obs;

  void selectPaypal() {
    paypalSelected.value = !paypalSelected.value;
  }

  void selectCashOnDelivery() {
    cashOnDeliverySelected.value = !cashOnDeliverySelected.value;
  }
}
