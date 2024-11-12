import 'package:get/get.dart';

class PaymentButtonController extends GetxController {
  var creditDebitCardSelected = false.obs;
  var paypalSelected = false.obs;
  var cashOnDeliverySelected = false.obs;

  bool get allSelectedTrue =>
      creditDebitCardSelected.value ||
      paypalSelected.value ||
      cashOnDeliverySelected.value;

  void selectCreditDebitCard() {
    creditDebitCardSelected.value = !creditDebitCardSelected.value;
    paypalSelected.value = false;
    cashOnDeliverySelected.value = false;
  }

  void selectPaypal() {
    paypalSelected.value = !paypalSelected.value;
    creditDebitCardSelected.value = false;
    cashOnDeliverySelected.value = false;
  }

  void selectCashOnDelivery() {
    cashOnDeliverySelected.value = !cashOnDeliverySelected.value;
    creditDebitCardSelected.value = false;
    paypalSelected.value = false;
  }
}
