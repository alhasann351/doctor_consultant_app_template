import 'package:doctor_consultant_app_template/views/doctors_booking/doctor_booking_confirm_screen.dart';
import 'package:get/get.dart';

class CardDoctorBookingTimeController extends GetxController {
  //var selectedCardIndex = (0).obs;
  var selectedTimeIndex = ('4:30 PM').obs;

  //var showGridview = false.obs;

  /*void selectCard(int index) {
    selectedCardIndex.value = index;
  }*/

  void selectTime(String index) {
    selectedTimeIndex.value = index;
  }

  void goToDetailScreen() {
    if (selectedTimeIndex.value.isNotEmpty) {
      Get.to(() => const DoctorBookingConfirmScreen());
    } else {
      Get.snackbar("Error", "Please select an item");
    }
  }

/*void toggleGridview() {
    showGridview.value = true;
  }*/
}
