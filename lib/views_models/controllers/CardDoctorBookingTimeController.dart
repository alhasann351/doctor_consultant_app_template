import 'package:get/get.dart';

class CardDoctorBookingTimeController extends GetxController {
  var selectedCardIndex = (-1).obs;
  var showGridview = false.obs;

  void selectCard(int index) {
    selectedCardIndex.value = index;
  }

  void toggleGridview() {
    showGridview.value = true;
  }
}
