import 'package:get/get.dart';

class PaymentButtonController extends GetxController {
  var creditDebitCardSelected = false.obs;
  var paypalSelected = false.obs;
  var cashOnDeliverySelected = false.obs;

  void selectCreditDebitCard() {
    creditDebitCardSelected.value = !creditDebitCardSelected.value;
  }

  void selectPaypal() {
    paypalSelected.value = !paypalSelected.value;
  }

  void selectCashOnDelivery() {
    cashOnDeliverySelected.value = !cashOnDeliverySelected.value;
  }
}
