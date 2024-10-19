import 'package:get/get.dart';

class CardDoctorBookingTimeController extends GetxController {
  var selectedCardIndex = (0).obs;
  var showGridview = false.obs;

  void selectCard(int index) {
    selectedCardIndex.value = index;
  }

  void toggleGridview() {
    showGridview.value = true;
  }
}
