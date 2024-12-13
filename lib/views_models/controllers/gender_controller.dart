import 'package:get/get.dart';

class GenderController extends GetxController {
  var selectedGender = 'Male'.obs;

  void setGender(String gender) {
    selectedGender.value = gender;
  }
}
