import 'package:get/get.dart';

class CardDoctorBookingTimeController extends GetxController {
  var selectedCardIndex = (-1).obs;
  var showListview = false.obs;

  void selectCard(int index) {
    selectedCardIndex.value = index;
  }

  void toggleListview() {
    showListview.value = true;
  }
}
