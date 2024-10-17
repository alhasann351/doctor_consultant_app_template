import 'package:get/get.dart';

class CardDoctorBookingTimeController extends GetxController {
  var selectedCardIndex = (-1).obs;

  void selectCard(int index) {
    selectedCardIndex.value = index;
  }
}
