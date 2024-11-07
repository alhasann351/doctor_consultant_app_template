import 'package:doctor_consultant_app_template/resources/routes/routes_name.dart';
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
      Get.toNamed(RoutesName.doctorBookingConfirmScreen);
      //Get.to(() => const DoctorBookingConfirmScreen());
    } else {
      Get.snackbar("Error", "Please select an item");
    }
  }

/*void toggleGridview() {
    showGridview.value = true;
  }*/
}
